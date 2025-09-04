# Makefile

PROTO_DIR := proto
OUT_DIR := gen/go
PROTO_FILE := $(PROTO_DIR)/sso/sso.proto

.PHONY: generate gen

# Генерація коду з proto
generate: 
	protoc -I $(PROTO_DIR) $(PROTO_FILE) \
	--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative

# Аліас
gen: generate