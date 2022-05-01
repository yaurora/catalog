# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | `{"DB_NAME":"{{ .Values.postgresql.postgresqlDatabase }}","DB_PORT":"5432","DB_TYPE":"postgres","DB_USER":"{{ .Values.postgresql.postgresqlUsername }}"}` |  https://github.com/ether/etherpad-lite/blob/develop/doc/docker.md For Mariadb, use DB_TYPE: mysql https://github.com/ether/etherpad-lite/issues/4214 |
| envValueFrom.DB_HOST.secretKeyRef.key | string | `"plainhost"` |  |
| envValueFrom.DB_HOST.secretKeyRef.name | string | `"dbcreds"` |  |
| envValueFrom.DB_PASS.secretKeyRef.key | string | `"postgresql-password"` |  |
| envValueFrom.DB_PASS.secretKeyRef.name | string | `"dbcreds"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/etherpad"` |  |
| image.tag | string | `"version-1.8.14@sha256:4900f0e787ca22cf93090ae44ecceb5689d4427c739e1eb637a6e3a913161bf8"` |  |
| persistence.app.enabled | bool | `true` |  |
| persistence.app.mountPath | string | `"/opt/etherpad-lite/app"` |  |
| persistence.data.enabled | bool | `true` |  |
| persistence.data.mountPath | string | `"/opt/etherpad-lite/var"` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `0` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.existingSecret | string | `"dbcreds"` |  |
| postgresql.postgresqlDatabase | string | `"etherpad"` |  |
| postgresql.postgresqlUsername | string | `"etherpad"` |  |
| secret | object | `{}` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `false` |  |
| service.main.ports.main.port | int | `10060` |  |
| service.main.ports.main.targetPort | int | `9001` |  |

All Rights Reserved - The TrueCharts Project
