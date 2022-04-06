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
| image.repository | string | `"tccr.io/truecharts/unmanic"` |  |
| image.tag | string | `"v0.2.0@sha256:8803a54504f699d45197b51866e9bdbb1f7bd543e0183aa8c055bfb3dacef04f"` |  |
| persistence.cache.enabled | bool | `true` |  |
| persistence.cache.mountPath | string | `"/tmp/unmanic"` |  |
| persistence.cache.type | string | `"emptyDir"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| persistence.library.enabled | bool | `true` |  |
| persistence.library.mountPath | string | `"/library"` |  |
| persistence.remote.enabled | bool | `true` |  |
| persistence.remote.mountPath | string | `"/tmp/unmanic/remote_library"` |  |
| persistence.varrun.enabled | bool | `true` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service.main.ports.main.port | int | `10157` |  |
| service.main.ports.main.targetPort | int | `8888` |  |

All Rights Reserved - The TrueCharts Project
