# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalVolumeMounts[0].mountPath | string | `"/config/custom-cont-init.d"` |  |
| additionalVolumeMounts[0].name | string | `"qbittorrent-scripts"` |  |
| additionalVolumes[0].emptyDir | object | `{}` |  |
| additionalVolumes[0].name | string | `"qbittorrent-scripts"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/qbittorrent"` |  |
| image.tag | string | `"v4.4.2@sha256:193ce0b3040737aaa3f2275d4615442d775f1b39cbcf4ffc11552b54734f6204"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| service.main.ports.main.port | int | `10095` |  |
| service.main.ports.main.targetPort | int | `8080` |  |
| service.torrent.enabled | bool | `true` |  |
| service.torrent.ports.torrent.enabled | bool | `true` |  |
| service.torrent.ports.torrent.port | int | `6881` |  |
| service.torrent.ports.torrent.targetPort | int | `6881` |  |
| service.torrentudp.enabled | bool | `true` |  |
| service.torrentudp.ports.torrentudp.enabled | bool | `true` |  |
| service.torrentudp.ports.torrentudp.port | int | `6881` |  |
| service.torrentudp.ports.torrentudp.protocol | string | `"UDP"` |  |
| service.torrentudp.ports.torrentudp.targetPort | int | `6881` |  |

All Rights Reserved - The TrueCharts Project
