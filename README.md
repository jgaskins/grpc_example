# Crystal gRPC Example

This is an example app showcasing the [`grpc`](https://github.com/jgaskins/grpc) Crystal shard.

## Installation

```
git clone https://github.com/jgaskins/grpc_example.git
cd grpc_example
shards
```

## Usage

1. Compile the `.proto` file containing the service and message definitions

   ```
   protoc -I protos \
     --grpc_out=src/protobufs \
     --crystal_out=src/protobufs \
     --plugin=protoc-gen-grpc=bin/grpc_crystal \
     --plugin=protoc-gen-crystal=bin/protoc-gen-crystal \
     protos/hello_world.proto
   ```

2. Run the server:

   ```
   crystal src/server.cr
   ```

2. Run the client, which will make a request to the server and pretty-print the result to standard output:

   ```
   crystal src/client.cr
   ```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/jgaskins/grpc_example/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Jamie Gaskins](https://github.com/jgaskins) - creator and maintainer
