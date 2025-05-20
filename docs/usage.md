# Usage

Project is run under HTTPS self-signed certificates generated with utilities like [mkcert](https://github.com/FiloSottile/mkcert). The local CA must be added to your system.

Starting project:

1. Create docker network using command
    ```bash
    docker network create app-net
    ```
2. Run to create and start the containers
    ```bash
    make start-app
    ```
    Application will be available under https://adguard.goldensoftwares.org

### Extra commands

Created a new certificate valid for the following names ***.home.localhost**

```bash
make generate-certificate
```

Generates basic auth

```bash
make user=user passwd=passwd generate-passwd
```
