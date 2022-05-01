# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | string | See below | environment variables. See more environment variables in the [gonic documentation](https://github.com/sentriz/gonic#configuration-options) |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/gonic"` | image repository |
| image.tag | string | `"v0.14.0@sha256:2965f50240b6fd9fb1535e87607c65f0f1212b5ce1df54966fb7d212efe1b770"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Set the container timezone GONIC_MUSIC_PATH: GONIC_PODCAST_PATH: GONIC_CACHE_PATH: -- Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
