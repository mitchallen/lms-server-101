# Makefile

help:
	@echo "Available targets:"
	@echo "  start      - Start the LMS server"
	@echo "  stop       - Stop the LMS server"
	@echo "  dev        - Run the application in development mode (ts-node)"
	@echo "  build      - Compile the TypeScript code (tsc)"
	@echo "  help       - Show this help message"

start:
	@lms server start

stop:
	@lms server start

dev:
	@if [ -z "$$(lms server status)" ]; then \
		make start; \
	fi
	@node_modules/.bin/ts-node src/index.ts

build:
	@tsc

