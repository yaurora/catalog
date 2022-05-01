# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below | environment variables. See more environment variables in the [stashapp documentation](https://raw.githubusercontent.com/stashapp/stash/master/docker/production/docker-compose.yml) |
| env.STASH_PORT | int | `9999` | Set the container port |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/stash"` | image repository |
| image.tag | string | `"v0.13.1@sha256:2b8c605b04f4c16d822a978990909a916b96aefc9bad93b25219fe241969aec5"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
