# Templates

## Overview

| rendering parameter name | default       | description                                                                  |
| ------------------------ | ------------- | ---------------------------------------------------------------------------- |
| GoModule                 | -             | go module, can be specified through –module                                  |
| ServiceName              | hertz_service | service name, which can be specified through –service                        |
| UseApacheThrift          | -             | true when idl is thrift, otherwise false                                     |
| HandlerPkg               | handler       | the last level path of the handler_dir, can be modified through –handler_dir |
| RouterPkg                | router        | the last level path of the router_dir, can be modified through –router_dir   |
