# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller.replicas | int | `2` | Number of pods to load balance between |
| env | string | See below | environment variables. See more environment variables in the [nullserv documentation](https://github.com/bmrzycki/nullserv/blob/master/README.md). |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/nullserv"` | image repository |
| image.tag | string | `"v1.3.0@sha256:67aa9d50ba0c9547b4b0f7fc68c023a34b5e2b027f7bc9233120d5fbd6bcf3cd"` | image tag |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| probes | object | See values.yaml | Configures the probes for the main Pod. |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Set the container timezone -- Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
