project_name:=luya-kickstarter
COMPOSE=docker-compose -p $(project_name) -f docker-compose.yml

create:
	composer create-project luyadev/luya-kickstarter:^1.0 $(project_name)
	cp Makefile $(project_name)
	cp -f docker-compose.yml $(project_name)
	@echo "Project create success. Go to project dir and run [make install]. After run [make setup]."

install: install.logs copy_env docker.install
	@echo "Install success. Run command [make setup]"

setup: docker.setup
	@echo "Setup success. Go to [https://localhost:8080/]"
	@echo "User admin@admin.com and password admin"

install.logs:
	mkdir logs
	touch logs/error.log
	touch logs/access.log

copy_env:
	cp configs/env.php.dist configs/env.php

docker.install:
	$(COMPOSE) up -d

docker.setup:
	$(COMPOSE) exec luya_web setup

docker.restart: docker.stop docker.start

docker.start:
	$(COMPOSE) up -d

docker.stop:
	$(COMPOSE) down

test:
	@echo "Test done."
