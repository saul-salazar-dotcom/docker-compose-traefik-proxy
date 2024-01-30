.PHONY: help

help: ## 😎 Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

test: ## ✅ Validate docker-compose.yml file
	docker-compose config

build: ## 🔧 Pull & Build the docker images
	docker-compose pull --quiet || true
	docker-compose build --quiet --pull

start: ## 🚀 Start containers
	docker-compose up --force-recreate --remove-orphans --detach

restart: ## 🔄 Restart containers
	docker-compose restart

stop: ## 🛑 Stop containers
	docker-compose stop

logs: ## 📄 Print logs (follow last 1000 lines)
	docker-compose logs --follow --tail 1000
