# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/sonarr"` |  |
| image.tag | string | `"v3.0.7.1477@sha256:a14027b732b5abe71854d48f76872e8bd0ff25d2b640e5f025bb30d96dfa73ec"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| probes.liveness.custom | bool | `true` |  |
| probes.liveness.enabled | bool | `true` |  |
| probes.liveness.spec.exec.command[0] | string | `"/usr/bin/env"` |  |
| probes.liveness.spec.exec.command[1] | string | `"bash"` |  |
| probes.liveness.spec.exec.command[2] | string | `"-c"` |  |
| probes.liveness.spec.exec.command[3] | string | `"curl --fail localhost:8989/api/v3/system/status?apiKey=`IFS=\\> && while read -d \\< E C; do if [[ $E = \"ApiKey\" ]]; then echo $C; fi; done < /config/config.xml`"` |  |
| probes.liveness.spec.failureThreshold | int | `5` |  |
| probes.liveness.spec.initialDelaySeconds | int | `60` |  |
| probes.liveness.spec.periodSeconds | int | `10` |  |
| probes.liveness.spec.successThreshold | int | `1` |  |
| probes.liveness.spec.timeoutSeconds | int | `10` |  |
| service.main.ports.main.port | int | `8989` |  |
| service.main.ports.main.targetPort | int | `8989` |  |

All Rights Reserved - The TrueCharts Project
