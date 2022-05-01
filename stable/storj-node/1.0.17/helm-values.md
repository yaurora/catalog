# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env.ADDRESS | string | `""` |  |
| env.EMAIL | string | `""` |  |
| env.SETUP | bool | `true` |  |
| env.STORAGE | string | `"500GB"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/storj-node"` |  |
| image.tag | string | `"v1.51.2@sha256:f864a21215a1cf4bceb8d2f456c1b8b03c84012f16b5ff32cba49f9e3c79f8bd"` |  |
| persistence.identity.enabled | bool | `true` |  |
| persistence.identity.mountPath | string | `"/app/identity"` |  |
| persistence.storage.enabled | bool | `true` |  |
| persistence.storage.mountPath | string | `"/app/config"` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| secret.WALLET | string | `"walletaddress"` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service.coretcp.enabled | bool | `true` |  |
| service.coretcp.ports.coretcp.enabled | bool | `true` |  |
| service.coretcp.ports.coretcp.port | int | `28967` |  |
| service.coretcp.ports.coretcp.protocol | string | `"TCP"` |  |
| service.coretcp.ports.coretcp.targetPort | int | `28967` |  |
| service.coreudp.enabled | bool | `true` |  |
| service.coreudp.ports.coreudp.enabled | bool | `true` |  |
| service.coreudp.ports.coreudp.port | int | `28967` |  |
| service.coreudp.ports.coreudp.protocol | string | `"UDP"` |  |
| service.coreudp.ports.coreudp.targetPort | int | `28967` |  |
| service.main.ports.main.port | int | `14002` |  |
| service.main.ports.main.targetPort | int | `14002` |  |

All Rights Reserved - The TrueCharts Project
