# Variables
PROTOC = protoc
PROTO_DIR = ./idl/protobuf
PROTO_FILES = $(wildcard $(PROTO_DIR)/*.proto)
PROTO_OUT_DIR = ./generated

IDL_DIR = ./idl/protobuf/v1
MODEL_DIR = ./core/model
HANDLER_DIR = ./core/handler
ROUTER_DIR = ./core/router

HELLO_IDL = $(IDL_DIR)/hello.proto
MODULE_NAME = github.com/template/hello

# Targets
.PHONY: all clean generate hz-init hz-update up

all: generate

generate: $(PROTO_FILES)
	$(PROTOC) --proto_path=$(PROTO_DIR) --go_out=$(PROTO_OUT_DIR) $(PROTO_FILES)

clean:
	rm -rf $(PROTO_OUT_DIR)

hz-init:
	hz new --force \
	--mod=$(MODULE_NAME) \
	--model_dir=$(MODEL_DIR) \
	--handler_dir=$(HANDLER_DIR) \
	--router_dir=$(ROUTER_DIR) \
	--customize_layout=template/layout.yml \
	--customize_layout_data_path=template/data.json && \
	hz update -idl $(HELLO_IDL) && \
	go get -u ./... && \
	go mod tidy

hz-update:
	hz update --idl $(HELLO_IDL) \
	--model_dir=$(MODEL_DIR) \
	--handler_dir=$(HANDLER_DIR) \
	go mod tidy

up:
	go run main.go serve