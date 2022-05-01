{{/* Define the configmap */}}
{{- define "n8n.configmap" -}}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: n8n-config
data:
  {{/*  Workflows */}}
  {{- if .Values.workflows.WORKFLOWS_DEFAULT_NAME }}
  WORKFLOWS_DEFAULT_NAME: {{ .Values.workflows.WORKFLOWS_DEFAULT_NAME | quote }}
  {{- end }}
  {{/*  Security */}}
  {{- if .Values.security.N8N_AUTH_EXCLUDE_ENDPOINTS }}
  N8N_AUTH_EXCLUDE_ENDPOINTS: {{ .Values.security.N8N_AUTH_EXCLUDE_ENDPOINTS | quote }}
  {{- end }}
  {{- if .Values.security.N8N_BASIC_AUTH_ACTIVE }}
  N8N_BASIC_AUTH_ACTIVE: {{ .Values.security.N8N_BASIC_AUTH_ACTIVE | quote }}
  {{- end }}
  {{- if .Values.security.N8N_BASIC_AUTH_USER }}
  N8N_BASIC_AUTH_USER: {{ .Values.security.N8N_BASIC_AUTH_USER | quote }}
  {{- end }}
  {{- if .Values.security.N8N_BASIC_AUTH_PASSWORD }}
  N8N_BASIC_AUTH_PASSWORD: {{ .Values.security.N8N_BASIC_AUTH_PASSWORD | quote }}
  {{- end }}
  {{- if .Values.security.N8N_BASIC_AUTH_HASH }}
  N8N_BASIC_AUTH_HASH: {{ .Values.security.N8N_BASIC_AUTH_HASH | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_AUTH_ACTIVE }}
  N8N_JWT_AUTH_ACTIVE: {{ .Values.security.N8N_JWT_AUTH_ACTIVE | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_AUTH_HEADER }}
  N8N_JWT_AUTH_HEADER: {{ .Values.security.N8N_JWT_AUTH_HEADER | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_AUTH_HEADER_VALUE_PREFIX }}
  N8N_JWT_AUTH_HEADER_VALUE_PREFIX: {{ .Values.security.N8N_JWT_AUTH_HEADER_VALUE_PREFIX | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWKS_URI }}
  N8N_JWKS_URI: {{ .Values.security.N8N_JWKS_URI | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_ISSUER }}
  N8N_JWT_ISSUER: {{ .Values.security.N8N_JWT_ISSUER | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_NAMESPACE }}
  N8N_JWT_NAMESPACE: {{ .Values.security.N8N_JWT_NAMESPACE | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_ALLOWED_TENANT }}
  N8N_JWT_ALLOWED_TENANT: {{ .Values.security.N8N_JWT_ALLOWED_TENANT | quote }}
  {{- end }}
  {{- if .Values.security.N8N_JWT_ALLOWED_TENANT_KEY }}
  N8N_JWT_ALLOWED_TENANT_KEY: {{ .Values.security.N8N_JWT_ALLOWED_TENANT_KEY | quote }}
  {{- end }}
  {{/*  Logs */}}
  {{- if .Values.logs.N8N_LOG_LEVEL }}
  N8N_LOG_LEVEL: {{ .Values.logs.N8N_LOG_LEVEL | quote }}
  {{- end }}
  {{- if .Values.logs.N8N_LOG_OUTPUT }}
  N8N_LOG_OUTPUT: {{ .Values.logs.N8N_LOG_OUTPUT | quote }}
  {{- end }}
  {{- if .Values.logs.N8N_LOG_FILE_COUNT_MAX }}
  N8N_LOG_FILE_COUNT_MAX: {{ .Values.logs.N8N_LOG_FILE_COUNT_MAX | quote }}
  {{- end }}
  {{- if .Values.logs.N8N_LOG_FILE_SIZE_MAX }}
  N8N_LOG_FILE_SIZE_MAX: {{ .Values.logs.N8N_LOG_FILE_SIZE_MAX | quote }}
  {{- end }}
  {{- if .Values.logs.N8N_LOG_FILE_LOCATION }}
  N8N_LOG_FILE_LOCATION: {{ .Values.logs.N8N_LOG_FILE_LOCATION | quote }}
  {{- end }}
  {{/*  Executions */}}
  {{- if .Values.executions.EXECUTIONS_PROCESS }}
  EXECUTIONS_PROCESS: {{ .Values.executions.EXECUTIONS_PROCESS | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_MODE }}
  EXECUTIONS_MODE: {{ .Values.executions.EXECUTIONS_MODE | quote }}
  {{- end }}
  {{- if or .Values.executions.EXECUTIONS_TIMEOUT ( eq 0 .Values.executions.EXECUTIONS_TIMEOUT ) }}
  EXECUTIONS_TIMEOUT: {{ .Values.executions.EXECUTIONS_TIMEOUT | quote }}
  {{- end }}
  {{- if or .Values.executions.EXECUTIONS_TIMEOUT_MAX ( eq 0 .Values.executions.EXECUTIONS_TIMEOUT_MAX ) }}
  EXECUTIONS_TIMEOUT_MAX: {{ .Values.executions.EXECUTIONS_TIMEOUT_MAX | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_DATA_SAVE_ON_ERROR }}
  EXECUTIONS_DATA_SAVE_ON_ERROR: {{ .Values.executions.EXECUTIONS_DATA_SAVE_ON_ERROR | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_DATA_SAVE_ON_SUCCESS }}
  EXECUTIONS_DATA_SAVE_ON_SUCCESS: {{ .Values.executions.EXECUTIONS_DATA_SAVE_ON_SUCCESS | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_DATA_SAVE_ON_PROGRESS }}
  EXECUTIONS_DATA_SAVE_ON_PROGRESS: {{ .Values.executions.EXECUTIONS_DATA_SAVE_ON_PROGRESS | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_DATA_SAVE_MANUAL_EXECUTIONS }}
  EXECUTIONS_DATA_SAVE_MANUAL_EXECUTIONS: {{ .Values.executions.EXECUTIONS_DATA_SAVE_MANUAL_EXECUTIONS | quote }}
  {{- end }}
  {{- if .Values.executions.EXECUTIONS_DATA_PRUNE }}
  EXECUTIONS_DATA_PRUNE: {{ .Values.executions.EXECUTIONS_DATA_PRUNE | quote }}
  {{- end }}
  {{- if or .Values.executions.EXECUTIONS_DATA_MAX_AGE ( eq 0 .Values.executions.EXECUTIONS_DATA_MAX_AGE ) }}
  EXECUTIONS_DATA_MAX_AGE: {{ .Values.executions.EXECUTIONS_DATA_MAX_AGE | quote }}
  {{- end }}
  {{- if or .Values.executions.EXECUTIONS_DATA_PRUNE_TIMEOUT ( eq 0 .Values.executions.EXECUTIONS_DATA_PRUNE_TIMEOUT ) }}
  EXECUTIONS_DATA_PRUNE_TIMEOUT: {{ .Values.executions.EXECUTIONS_DATA_PRUNE_TIMEOUT | quote }}
  {{- end }}
  {{/*  Endpoints */}}
  {{- if .Values.endpoints.WEBHOOK_URL }}
  WEBHOOK_URL: {{ .Values.endpoints.WEBHOOK_URL | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_PAYLOAD_SIZE_MAX }}
  N8N_PAYLOAD_SIZE_MAX: {{ .Values.endpoints.N8N_PAYLOAD_SIZE_MAX | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_METRICS }}
  N8N_METRICS: {{ .Values.endpoints.N8N_METRICS | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_METRICS_PREFIX }}
  N8N_METRICS_PREFIX: {{ .Values.endpoints.N8N_METRICS_PREFIX | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_ENDPOINT_REST }}
  N8N_ENDPOINT_REST: {{ .Values.endpoints.N8N_ENDPOINT_REST | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_ENDPOINT_WEBHOOK }}
  N8N_ENDPOINT_WEBHOOK: {{ .Values.endpoints.N8N_ENDPOINT_WEBHOOK | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_ENDPOINT_WEBHOOK_TEST }}
  N8N_ENDPOINT_WEBHOOK_TEST: {{ .Values.endpoints.N8N_ENDPOINT_WEBHOOK_TEST | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_ENDPOINT_WEBHOOK_WAIT }}
  N8N_ENDPOINT_WEBHOOK_WAIT: {{ .Values.endpoints.N8N_ENDPOINT_WEBHOOK_WAIT | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_DISABLE_PRODUCTION_MAIN_PROCESS }}
  N8N_DISABLE_PRODUCTION_MAIN_PROCESS: {{ .Values.endpoints.N8N_DISABLE_PRODUCTION_MAIN_PROCESS | quote }}
  {{- end }}
  {{- if .Values.endpoints.N8N_SKIP_WEBHOOK_DEREGISTRATION_SHUTDOWN }}
  N8N_SKIP_WEBHOOK_DEREGISTRATION_SHUTDOWN: {{ .Values.endpoints.N8N_SKIP_WEBHOOK_DEREGISTRATION_SHUTDOWN | quote }}
  {{- end }}
  {{/*  Credentials */}}
  {{- if .Values.credentials.CREDENTIALS_OVERWRITE_DATA }}
  CREDENTIALS_OVERWRITE_DATA: {{ .Values.credentials.CREDENTIALS_OVERWRITE_DATA | quote }}
  {{- end }}
  {{- if .Values.credentials.CREDENTIALS_OVERWRITE_ENDPOINT }}
  CREDENTIALS_OVERWRITE_ENDPOINT: {{ .Values.credentials.CREDENTIALS_OVERWRITE_ENDPOINT | quote }}
  {{- end }}
  {{- if .Values.credentials.CREDENTIALS_DEFAULT_NAME }}
  CREDENTIALS_DEFAULT_NAME: {{ .Values.credentials.CREDENTIALS_DEFAULT_NAME | quote }}
  {{- end }}
  {{/*  Deployment */}}
  {{- if .Values.deployment.N8N_HOST }}
  N8N_HOST: {{ .Values.deployment.N8N_HOST | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_CONFIG_FILES }}
  N8N_CONFIG_FILES: {{ .Values.deployment.N8N_CONFIG_FILES | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_DISABLE_UI }}
  N8N_DISABLE_UI: {{ .Values.deployment.N8N_DISABLE_UI | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_ENCRYPTION_KEY }}
  N8N_ENCRYPTION_KEY: {{ .Values.deployment.N8N_ENCRYPTION_KEY | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_PERSONALIZATION_ENABLED }}
  N8N_PERSONALIZATION_ENABLED: {{ .Values.deployment.N8N_PERSONALIZATION_ENABLED | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_VERSION_NOTIFICATIONS_ENABLED }}
  N8N_VERSION_NOTIFICATIONS_ENABLED: {{ .Values.deployment.N8N_VERSION_NOTIFICATIONS_ENABLED | quote }}
  {{- end }}
  {{- if .Values.deployment.N8N_DIAGNOSTICS_ENABLED }}
  N8N_DIAGNOSTICS_ENABLED: {{ .Values.deployment.N8N_DIAGNOSTICS_ENABLED | quote }}
  {{- end }}
{{- end -}}
