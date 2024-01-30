# traefik

Traefik Proxy with Docker. For local use only.

## Quick Start
```bash
git clone https://gitlab.com/saulmendoza/traefik.git
cd traefik
make start

# Open your browser and go to http://traefik.localhost
# Or use the CLI to launch it
# Windows:
explorer "http://traefik.localhost"
# MacOS:
open "http://traefik.localhost"
```

## Available Commands
```sh
$ make help
help                 😎 Show this help
test                 ✅ Validate docker-compose.yml file
build                🔧 Pull & Build the docker images
start                🚀 Start containers
restart              🔄 Restart containers
stop                 🛑 Stop containers
logs                 📄 Print logs (follow last 1000 lines)
```
