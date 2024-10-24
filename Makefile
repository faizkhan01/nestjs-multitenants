REDIS=aynabaji-cache

######################
###  DEVELOPMENT   ###
######################

build:
	docker-compose -f docker-compose.development.yaml up --build --detach

destroy:
	docker-compose -f docker-compose.development.yaml down --volumes

lint:
	docker-compose -f docker-compose.development.yaml exec api npm run lint

keygen:
	docker-compose -f docker-compose.development.yaml exec api npm run keygen


start:
	docker-compose -f docker-compose.development.yaml up --detach

stop:
	docker-compose -f docker-compose.development.yaml stop

shell:
	docker-compose -f docker-compose.development.yaml exec api sh

install:
	npm install
	
logs:
	docker-compose -f docker-compose.development.yaml logs --follow api

redis-cli:
	docker exec -it ${REDIS} redis-cli

kill:
	sudo killall node
	
kill-docker:
	docker kill $(docker ps -q)
