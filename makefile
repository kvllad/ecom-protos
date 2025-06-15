PROTO_DIR=proto
GO_OUT=gen/go

generate:
	protoc -I $(PROTO_DIR) $(PROTO_DIR)/sso/*.proto \
		--go_out=$(GO_OUT) --go_opt=paths=source_relative \
		--go-grpc_out=$(GO_OUT) --go-grpc_opt=paths=source_relative \
		--go_opt=default_api_level=API_OPAQUE