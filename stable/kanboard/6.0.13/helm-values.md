# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below (only deviations from the default settings are specified) | environment variables. See [image docs](https://docs.kanboard.org/en/latest/admin_guide/docker.html#environment-variables) and [application docs](# https://docs.kanboard.org/en/latest/admin_guide/config_file.html) for more details. |
| env.LOG_DRIVER | string | `"stdout"` | log driver: syslog, stderr, stdout or file |
| env.MAIL_CONFIGURATION | bool | `false` | Set the container timezone -- Enable/disable email configuration from the user interface |
| envValueFrom.DB_HOSTNAME.secretKeyRef.key | string | `"plainhost"` |  |
| envValueFrom.DB_HOSTNAME.secretKeyRef.name | string | `"dbcreds"` |  |
| envValueFrom.DB_PASSWORD.secretKeyRef.key | string | `"postgresql-password"` |  |
| envValueFrom.DB_PASSWORD.secretKeyRef.name | string | `"dbcreds"` |  |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/kanboard"` | image repository |
| image.tag | string | `"v1.2.22@sha256:693507bec023dacc214fcb5bdcfc7004fd116befc8aed63b1617315bf2de8f9c"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| postgresql | object | See values.yaml | Enable and configure postgresql database subchart under this key. |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
