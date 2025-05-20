DOCKER_COMPOSE = docker compose
EXEC_PROXY     = $(DOCKER_COMPOSE) exec -T reverse-proxy

.PHONY: start-app init-app dump-env copy-conf

dump-env:
	sort -u -t '=' -k 1,1 .env > .env.local

copy-conf:
	cp etc/config/AdGuardHome.yaml.dist etc/config/AdGuardHome.yaml

generate-passwd:
	htpasswd -b -Bc etc/passwd/users $(user) $(passwd)

start-app:
	$(DOCKER_COMPOSE) -f docker-compose.yaml --env-file .env.local up -d

stop-app:
	$(DOCKER_COMPOSE) -f docker-compose.yaml --env-file .env.local down -v

init-app: dump-env copy-conf
