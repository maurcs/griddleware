module Griddleware
  class GridImage
    
    def initialize(app)
      @app = app
    end
    
    def call(env)
      rack = Rack::Request.new(env)
      [200, {"Content-Type" => "text/html"}, "Hello World!"]
      # @status, @headers, @response = @app.call(env)
      # [@status, @headers, "Hello World!"]
    end
    
    def each(&block)
      @response.each(&block)
    end
  
  end
end