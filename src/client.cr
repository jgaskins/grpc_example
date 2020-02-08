require "./protobufs/hello_world_services.pb"
require "./protobufs/hello_world.pb"

HelloWorldService = HelloWorld::Stub.new("0.0.0.0", 50000)

pp HelloWorldService.method_name(TheRequest.new(text: ARGV.fetch(0) { "foo bar" }))
