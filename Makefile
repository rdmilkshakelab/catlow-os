# ==============================================================================
# Makefile for Catlow OS
# Named after creator Alfie Catlow
# ==============================================================================

.PHONY: all build clean help

# Default target runs when you just type 'make'
all: build

## build: Build the Catlow OS Docker compilation environment
build:
	@echo "========================================================================"
	@echo " Building Catlow OS Docker Compilation Environment..."
	@echo "========================================================================"
	# Using '-f ./Dockerfile' forces docker to find the file in the current directory
	docker build -f ./Dockerfile -t catlow-build .
	@echo ""
	@echo "Build environment successfully created!"
	@echo "You can now run your GitHub Actions or local compilation pipelines."

## clean: Remove the locally cached Docker build image
clean:
	@echo "Cleaning up local Catlow OS Docker images..."
	docker rmi catlow-build || true
	@echo "Clean complete."

## help: Show available build commands
help:
	@echo "Available commands for Catlow OS:"
	@echo "  make        - Same as 'make build'"
	@echo "  make build  - Prepares the Docker build environment container"
	@echo "  make clean  - Safely deletes the local docker build image"
	@echo "  make help   - Displays this command menu"
