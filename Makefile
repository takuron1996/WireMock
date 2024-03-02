SHELL = /bin/bash
CONTAINER_NAME = wiremock
DOCKER = docker exec $(CONTAINER_NAME)
PORT = 8080
URL = http://localhost

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

reload:
	$(DOCKER) curl -X POST $(URL):$(PORT)/__admin/mappings/reset
