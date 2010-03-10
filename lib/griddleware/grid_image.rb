module Griddleware
  class GridImage
    
    def initialize(app)
      @app = app
    end
    
    def call(env)
      rack = Rack::Request.new(env)
      if rack.path =~ /^\/grid\/([\w]+)\/([\w]+)\/(.+)$/
        owner_type, owner_id = [$1.classify, $2.to_i]
        style_path = $3.split('/')
        file_name = style_path.pop
        name = style_path.join("/")
        record = {
          :name => name.to_sym,
          :owner_type => owner_type,
          :owner_id => owner_id
        }
        attachment = Griddle::Attachment.attachment_for(record)
        puts attachment.exists?
        [200, {"Content-Type" => attachment.content_type}, attachment.file.read]
      else
        @app.call(env)
      end
      # @status, @headers, @response = @app.call(env)
      # [@status, @headers, "Hello World!"]
    end
    
    def each(&block)
      @response.each(&block)
    end
  
  end
end