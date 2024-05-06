# Makefile

help:
	@echo "Available targets:"
	@echo "  start      - Start the LMS server"
	@echo "  stop       - Stop the LMS server"
	@echo "  status     - Show the LMS server status"
	@echo "  available  - List downloaded models"
	@echo "  loaded     - List loaded models"
	@echo "  load       - Prompt to load a model (run twice, get two instances)"
	@echo "  unload     - Prompt to unload a model"
	@echo "  dev        - Run the application in development mode (ts-node)"
	@echo "  build      - Compile the TypeScript code (tsc)"
	@echo "  help       - Show this help message"

start:
	@lms server start

stop:
	@lms server stop

status:
	@lms status

available:
	@lms ls

loaded:
	@lms ps

load:
	@lms load --gpu max

unload:
	@lms unload

dev:
	@if [ -z "$$(lms server status)" ]; then \
		make start; \
	fi
	@node_modules/.bin/ts-node src/index.ts

build:
	@node_modules/.bin/tsc


