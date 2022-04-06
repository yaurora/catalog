# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below | environment variables. See [image docs](https://github.com/seejohnrun/haste-server) for more details. |
| env.STORAGE_FILEPATH | string | `"/config"` | filepath for persistance |
| env.STORAGE_TYPE | string | `"file"` | sets backend |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/haste-server"` | image repository |
| image.tag | string | `"latest@sha256:046b4d04aa5c23a7a4de10b678aad8f62932e2ae04b2db123107e753b7929f86"` | image tag |
| ingress.main | object | See values.yaml | Enable and configure ingress settings for the chart under this key. |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| service | object | See values.yaml | Configures service settings for the chart. Normally this does not need to be modified. |

All Rights Reserved - The TrueCharts Project
