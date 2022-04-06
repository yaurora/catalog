# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| envValueFrom.JWT_SECRET.secretKeyRef.key | string | `"JWT_SECRET"` |  |
| envValueFrom.JWT_SECRET.secretKeyRef.name | string | `"hammond-secrets"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/hammond"` |  |
| image.tag | string | `"1.0.0@sha256:a38f0455634f15a38535b6f067f0cd6b62770df51d0c40c5f09ad19cbe066702"` |  |
| persistence.assets.enabled | bool | `true` |  |
| persistence.assets.mountPath | string | `"/assets"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| service.main.ports.main.port | int | `10186` |  |
| service.main.ports.main.targetPort | int | `3000` |  |

All Rights Reserved - The TrueCharts Project
