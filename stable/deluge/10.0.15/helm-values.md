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
| image.repository | string | `"tccr.io/truecharts/deluge"` |  |
| image.tag | string | `"v2.0.5@sha256:dabc0bc3ebf9e54ef2dc73df57e030099cfa35657cd6c7c8c6fb3f9c395ed668"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| persistence.varrun.enabled | bool | `true` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service.main.ports.main.port | int | `8112` |  |
| service.main.ports.main.targetPort | int | `8112` |  |
| service.torrent-udp.enabled | bool | `true` |  |
| service.torrent-udp.ports.udp.enabled | bool | `true` |  |
| service.torrent-udp.ports.udp.port | int | `51413` |  |
| service.torrent-udp.ports.udp.protocol | string | `"UDP"` |  |
| service.torrent-udp.ports.udp.targetPort | int | `51413` |  |
| service.torrent.enabled | bool | `true` |  |
| service.torrent.ports.tcp.enabled | bool | `true` |  |
| service.torrent.ports.tcp.port | int | `51413` |  |
| service.torrent.ports.tcp.targetPort | int | `51413` |  |

All Rights Reserved - The TrueCharts Project
