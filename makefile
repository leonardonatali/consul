default: up

up:
	@echo "\nstarting stack\n"
	@ENCRYPT_KEY='SiAV+bxN3H24YqrsXRGIPjR5mbmRdwbl5eQtsGp8V5E=' docker-compose up -d --build
	
kill:
	@echo "\nstopping all services\n"
	@docker-compose down
