default: up

up:
	@echo "\nstarting stack\n"
	@docker-compose up -d --build
	
kill:
	@echo "\nstopping all services\n"
	@docker-compose down
