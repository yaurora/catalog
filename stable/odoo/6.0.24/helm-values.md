# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env.PORT | int | `5432` |  |
| env.USER | string | `"{{ .Values.postgresql.postgresqlUsername }}"` |  |
| envValueFrom.HOST.secretKeyRef.key | string | `"plainhost"` |  |
| envValueFrom.HOST.secretKeyRef.name | string | `"dbcreds"` |  |
| envValueFrom.PASSWORD.secretKeyRef.key | string | `"postgresql-password"` |  |
| envValueFrom.PASSWORD.secretKeyRef.name | string | `"dbcreds"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tccr.io/truecharts/odoo"` |  |
| image.tag | string | `"v15.0@sha256:e99e3fe71ea102268bba2b23ed6112ebf756b4f045051a867d8b27b24efbb6f4"` |  |
| persistence.addons.enabled | bool | `true` |  |
| persistence.addons.mountPath | string | `"/mnt/extra-addons"` |  |
| persistence.odoo.enabled | bool | `true` |  |
| persistence.odoo.mountPath | string | `"/var/lib/odoo"` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.existingSecret | string | `"dbcreds"` |  |
| postgresql.postgresqlDatabase | string | `"postgres"` |  |
| postgresql.postgresqlUsername | string | `"odoo"` |  |
| service.main.ports.main.port | int | `8069` |  |
| service.main.ports.main.targetPort | int | `8069` |  |
| service.odoo.enabled | bool | `true` |  |
| service.odoo.ports.longpolling.enabled | bool | `true` |  |
| service.odoo.ports.longpolling.port | int | `8072` |  |
| service.odoo.ports.longpolling.targetPort | int | `8072` |  |
| service.odoo.ports.xmlrpcs.enabled | bool | `true` |  |
| service.odoo.ports.xmlrpcs.port | int | `8071` |  |
| service.odoo.ports.xmlrpcs.targetPort | int | `8071` |  |

All Rights Reserved - The TrueCharts Project
