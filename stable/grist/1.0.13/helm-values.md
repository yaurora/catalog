# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env.GRIST_DEFAULT_EMAIL | string | `"user@mydomain.com"` |  |
| env.HOME_PORT | string | `"{{ .Values.service.api.ports.api.port }}"` |  |
| env.PORT | string | `"{{ .Values.service.main.ports.main.port }}"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/grist"` |  |
| image.tag | string | `"v0.7.6@sha256:b25e45defaddb7557ae36bdd058cdd9b69aab91403a2c9966de7f9a1ce9f44af"` |  |
| persistence.persist.enabled | bool | `true` |  |
| persistence.persist.mountPath | string | `"/persist"` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | `{"api":{"enabled":true,"ports":{"api":{"enabled":true,"port":10164,"targetPort":10164}}},"main":{"ports":{"main":{"port":10163,"targetPort":10163}}}}` |  envValueFrom:   REDIS_URL:     secretKeyRef:       name: rediscreds       key: url |

All Rights Reserved - The TrueCharts Project
