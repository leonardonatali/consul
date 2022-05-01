default: up

up:
	@echo "\nstarting stack\n"
	@docker-compose up -d --build

	@echo "\njoining nodes\n"
	@docker-compose exec server-1 consul join server-2
	@docker-compose exec server-1 consul join server-3
	@docker-compose exec server-1 consul join client-1
	
	@echo "\nsuccessful start\n"
	
kill:
	@echo "\nstopping all services\n"
	@docker-compose down
