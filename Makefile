
.PHONY: start-production
start-production:
	docker-compose \
		--project-name="current-bench" \
		--file=./environments/production.docker-compose.yaml \
		--env-file=./environments/production.env \
		up \
		--detach \
		--build

.PHONY: stop-production
stop-production:
	docker-compose \
		--project-name="current-bench" \
		--file=./environments/production.docker-compose.yaml \
		--env-file=./environments/production.env \
		down

.PHONY: start-development
start-development:
	docker-compose \
		--project-name="current-bench" \
		--file=./environments/development.docker-compose.yaml \
		up \
		--build 

.PHONY: stop-development
stop-development:
	docker-compose \
		--project-name="current-bench" \
		--file=./environments/development.docker-compose.yaml \
		down \
		--volumes 
