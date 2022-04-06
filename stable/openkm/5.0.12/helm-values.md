# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | string | See below | environment variables. See more environment variables in the [openkm documentation](https://openkm.org/docs). |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/openkm-ce"` | image repository |
| image.tag | string | `"v6.3.11@sha256:941156f70c16350fb92d66f60007ac68abaee11265448eaacc40e821a46afc4d"` | image tag |
| initContainers.init.command[0] | string | `"/config/init/init.sh"` |  |
| initContainers.init.image | string | `"{{ .Values.alpineImage.repository }}:{{ .Values.alpineImage.tag }}"` |  |
| initContainers.init.volumeMounts[0].mountPath | string | `"/config/init"` |  |
| initContainers.init.volumeMounts[0].name | string | `"init"` |  |
| initContainers.init.volumeMounts[1].mountPath | string | `"/opt/tomcat"` |  |
| initContainers.init.volumeMounts[1].name | string | `"config"` |  |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.existingSecret | string | `"dbcreds"` |  |
| postgresql.postgresqlDatabase | string | `"openkm"` |  |
| postgresql.postgresqlUsername | string | `"openkm"` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Set the container timezone -- Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
