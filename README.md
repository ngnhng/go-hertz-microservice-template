# (WIP) Go API Server Template

-   An opinionated template for building Go RESTful APIs using [Hertz](github.com/cloudwego/hertz) and [fx](github.com/uber-go/fx).

-   Goals:

    -   Provide a quick starting point for building HTTP RESTful APIs in Go that require integration with many third-party services.
    -   No need to worry about the boilerplate code.
    -   _Tries_ not to be another enterprise layer cake.
    -   _Tries_ to use the best practices for building APIs in Go.

-   Not meant to be a one-size-fits-all solution, e.g., serverless functions, large monorepos, specific domain requirements, etc.

<details>
<summary>Table of Contents</summary>

-   [Usage](#usage)
-   [Generated Folder Layout](#generated-folder-layout)
-   [Customization](#customization)

</details>

## Usage

-   [Notice](https://www.cloudwego.io/docs/hertz/tutorials/toolkit/cautions/#notes-on-using-windows-operating-system) for Windows users

0. **Install necessary tools**:

    - Code generator:

    ```shell
    go install github.com/cloudwego/hertz/cmd/hz@latest
    ```

    - Protobuf compiler:

        - For MacOS:

        ```shell
        brew install protobuf
        ```

        - For Ubuntu:

        ```shell
        sudo apt install protobuf-compiler
        ```

        - For Windows:

        ```shell
        choco install protoc
        ```

    - Go plugin for Protobuf compiler:

    ```shell
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
    ```

1. **Generate the project**:

    ```shell
    make hz-init
    ```

2. **Run the server**:

    ```shell
    make up
    ```

3. **Update the API**:

    - Update the `.proto` files in the `idl` (interface definition language) folder.
    - Run the following command to generate the code:

    ```shell
    make hz-update
    ```

## Generated Folder Layout

```shell
.
|-- cmd                     # Main applications of the project 
|   |-- api.go                # Command for the API server
|   |-- root.go               # Root command of the project
|   `-- version.go            # Command for the version
|-- core                    # Core packages of the project
|   |-- handler               # Handlers for the API server
|   |   `-- hello
|   |       `-- hello_service.go
|   |-- model                 # Models for the API server
|   |   |-- api                # Generated API models
|   |   |   `-- api.pb.go
|   |   `-- hello
|   |       `-- hello.pb.go
|   `-- router                # Router for the API server
|       |-- hello
|       |   |-- hello.go
|       |   `-- middleware.go
|       `-- register.go        # Register the routes
|-- go.mod
|-- go.sum
|-- idl                    # Interface definition language
|   `-- protobuf
|       `-- v1
|           |-- api.proto
|           `-- hello.proto
|-- main.go                # Main entry point of the project
```

## Customization
