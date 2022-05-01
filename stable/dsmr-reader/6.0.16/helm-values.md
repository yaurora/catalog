# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below | environment variables. See [image docs](https://github.com/xirixiz/dsmr-reader-docker#dsmr-reader---environment-variables) for more details. |
| env.DJANGO_TIME_ZONE | string | `"{{ .Values.TZ }}"` | Set the container timezone |
| envValueFrom.DJANGO_DATABASE_HOST.secretKeyRef.key | string | `"plainhost"` |  |
| envValueFrom.DJANGO_DATABASE_HOST.secretKeyRef.name | string | `"dbcreds"` |  |
| envValueFrom.DJANGO_DATABASE_PASSWORD.secretKeyRef.key | string | `"postgresql-password"` |  |
| envValueFrom.DJANGO_DATABASE_PASSWORD.secretKeyRef.name | string | `"dbcreds"` |  |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/dsmr-reader"` | image repository |
| image.tag | string | `"v2021.09.02@sha256:bf3454b0b379d325d95ec0693e2634bcfd4bfd917ec59d0918ca60d32a6073c5"` | image tag |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| postgresql | object | See values.yaml | Enable and configure postgresql database subchart under this key. |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
