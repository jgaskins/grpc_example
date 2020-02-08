require "grpc"
require "grpc/http2"

require "./protobufs/hello_world_services.pb"
require "./protobufs/hello_world.pb"

class HelloWorldHandler < HelloWorld
  # You can define your own initialize method to inject dependencies

  def method_name(request : TheRequest) : TheResponse
    if text = request.text
      TheResponse.new(data: "Hello #{text.upcase}")
    else
      TheResponse.new(data: "Howdy!")
    end
  end
end

grpc = GRPC::Server.new
grpc << HelloWorldHandler.new

server = HTTP2::ClearTextServer.new([grpc])
server.listen "0.0.0.0", 50000
