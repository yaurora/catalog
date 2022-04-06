# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env.DATABASE_USER | string | `"{{ .Values.postgresql.postgresqlUsername }}"` |  |
| env.DOCS_BASE_URL | string | `""` | The base url used by the application |
| env.DOCS_DEFAULT_LANGUAGE | string | `"eng"` | Set the container timezone -- The language which will be used as default |
| env.DOCS_SMTP_HOSTNAME | string | `""` | Hostname of the SMTP-Server to be used by Teedy |
| env.DOCS_SMTP_PORT | int | `0` | The port of the SMTP-Server which should be used |
| envValueFrom.DATABASE_PASSWORD.secretKeyRef.key | string | `"postgresql-password"` |  |
| envValueFrom.DATABASE_PASSWORD.secretKeyRef.name | string | `"dbcreds"` |  |
| envValueFrom.DATABASE_URL.secretKeyRef.key | string | `"jdbc"` |  |
| envValueFrom.DATABASE_URL.secretKeyRef.name | string | `"dbcreds"` |  |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"tccr.io/truecharts/docs"` | image repository |
| image.tag | string | `"v1.10@sha256:da049548cc6e261fb09530de30b8856a5f45ec9be654fa8aba4b3dd4f6d091d7"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| postgresql | object | See values.yaml | Enable and configure postgresql database subchart under this key. |
| secret | object | See below | environment variables. See [application docs](https://github.com/sismics/docs) for more details. |
| secret.DOCS_ADMIN_EMAIL_INIT | string | `""` | Defines the e-mail-address the admin user should have upon initialization |
| secret.DOCS_ADMIN_PASSWORD_INIT | string | `""` | Defines the password the admin user should have upon initialization. Needs to be a bcrypt hash. |
| secret.DOCS_SMTP_PASSWORD | string | `""` | The password of the SMTP-Server which should be used |
| secret.DOCS_SMTP_USERNAME | string | `""` | The username of the SMTP-Server which should be used |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
