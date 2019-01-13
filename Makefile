.PHONY: api
api:
	swagger generate server -A todo-list -f swagger.yml

.PHONY: serve
serve: api
	go run cmd/todo-list-server/main.go --port=8080

.PHONY: validate
validate:
	swagger validate swagger.yml
