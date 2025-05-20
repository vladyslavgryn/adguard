# Deploy

To deploy application in production mode must be used `docker-compose.yaml` compose file with production environment. Before running application environment files must be combined using command
```bash
make dump-env
```
And after run to start an application

```bash
make start-app
```

### Additional command

Generates basic auth

```bash
make user=user passwd=passwd generate-passwd
```

Generate random hash

```bash
openssl rand -base64 48
```
