# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | `{}` |  |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/prometheus-uptimerobot-exporter"` | image repository |
| image.tag | string | `"v0.0.1@sha256:c73a86e73ab47e0974eb3d6bd6ce5834befe8363979a9da2b53922b630ec084a"` | image tag |
| metrics.enabled | bool | See values.yaml | Enable and configure a Prometheus serviceMonitor for the chart under this key. |
| metrics.prometheusRule | object | See values.yaml | Enable and configure Prometheus Rules for the chart under this key. |
| metrics.prometheusRule.rules | list | See prometheusrules.yaml | Configure additionial rules for the chart under this key. |
| metrics.serviceMonitor.interval | string | `"1m"` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `"30s"` |  |
| secret | object | See below | environment variables. See [application docs](https://github.com/lekpamartin/uptimerobot_exporter/blob/master/docker-compose.yml) for more details. |
| secret.UPTIMEROBOT_API_KEY | string | `""` | Set the uptimerobot API key |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
