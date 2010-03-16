module Griddleware
  class GridFile
    
    def initialize(app)
      @app = app
    end
    
    def call(env)
      rack = Rack::Request.new(env)
      if rack.path =~ /^\/grid\/([\w]+)\/([\w]+)\/(.+)$/
        owner_type, owner_id = [$1.classify, $2]
        style_path = $3.split('/')
        file_name = style_path.pop
        name = style_path.join("/")
        record = {
          :name => name,
          :owner_type => owner_type,
          :owner_id => owner_id
        }
        attachment = Griddle::Attachment.attachment_for(record)
        [200, {"Content-Type" => attachment.content_type}, attachment.file.read]
      else
        @app.call(env)
      end
    end
    
    def each(&block)
      @response.each(&block)
    end
  
  end
end