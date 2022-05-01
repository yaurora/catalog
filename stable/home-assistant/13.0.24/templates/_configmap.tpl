{{/* Define the configmap */}}
{{- define "hass.configmap" -}}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "common.names.fullname" . }}-init
data:
  init.sh: |-
    #!/bin/sh
    if test -f "/config/configuration.yaml"; then
      echo "configuration.yaml exists."
      if grep -q recorder: "/config/configuration.yaml"; then
      echo "configuration.yaml already contains recorder"
      else
      cat /config/init/recorder.default >> /config/configuration.yaml
      fi
      if grep -q http: "/config/configuration.yaml"; then
      echo "configuration.yaml already contains http section"
      else
      cat /config/init/http.default >> /config/configuration.yaml
      fi
    else
    echo "configuration.yaml does NOT exist."
    cp /config/init/configuration.yaml.default /config/configuration.yaml
    cat /config/init/recorder.default >> /config/configuration.yaml
    cat /config/init/http.default >> /config/configuration.yaml
    fi

    echo "Creating include files..."
    for include_file in groups.yaml automations.yaml scripts.yaml scenes.yaml; do
      if test -f "/config/$include_file"; then
      echo "$include_file exists."
      else
      echo "$include_file does NOT exist."
      touch "/config/$include_file"
      fi
    done

    cd "/config" || echo "Could not change path to /config"
    echo "Creating custom_components directory..."
    mkdir "/config/custom_components" || echo "custom_components directory already exists"

    echo "Changing to the custom_components directory..."
    cd "/config/custom_components" || echo "Could not change path to /config/custom_components"

    echo "Downloading HACS"
    wget "https://github.com/hacs/integration/releases/latest/download/hacs.zip" || exit 0

    if [ -d "/config/custom_components/hacs" ]; then
        echo "HACS directory already exist, cleaning up..."
        rm -R "/config/custom_components/hacs"
    fi

    echo "Creating HACS directory..."
    mkdir "/config/custom_components/hacs"

    echo "Unpacking HACS..."
    unzip "/config/custom_components/hacs.zip" -d "/config/custom_components/hacs" >/dev/null 2>&1

    echo "Removing HACS zip file..."
    rm "/config/custom_components/hacs.zip"
    echo "Installation complete."

  configuration.yaml.default: |-
    # Configure a default setup of Home Assistant (frontend, api, etc)
    default_config:

    # Text to speech
    tts:
      - platform: google_translate

    group: !include groups.yaml
    automation: !include automations.yaml
    script: !include scripts.yaml
    scene: !include scenes.yaml
  recorder.default: |-

    recorder:
      purge_keep_days: 30
      commit_interval: 3
      db_url: {{ ( printf "%s?client_encoding=utf8" ( .Values.postgresql.url.complete | trimAll "\"" ) ) | quote }}
  http.default: |-

    http:
      use_x_forwarded_for: true
      trusted_proxies:
        - 172.16.0.0/16

{{- end -}}
