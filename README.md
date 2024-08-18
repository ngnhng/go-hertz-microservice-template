# (WIP) Go API Server Template

-   An opinionated template for building Go RESTful APIs using [Hertz](github.com/cloudwego/hertz) and [fx](github.com/uber-go/fx).

-   Goals:

    -   Provide a quick starting point for building HTTP RESTful APIs in Go that require integration with many third-party services.
    -   No need to worry about the boilerplate code.
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

## Generated Folder Layout

```shell

```

## Customization
