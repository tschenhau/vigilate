postgres:
	docker run --name postgres -p 5432:5432 -e POSTGRES_USER=psluser -e POSTGRES_HOST_AUTH_METHOD=trust -d postgres

createdb:
	docker exec -it postgres createdb --username=psluser --owner=psluser vigilate
	
migration:
	soda migrate

.PHONY: postgres createdb migration