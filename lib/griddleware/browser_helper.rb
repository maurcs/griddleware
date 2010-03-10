module Griddleware
  module BrowserHelper
  
    def url
      "/grid/#{grid_key}"
    end
  
  end
end

Griddle::Attachment.send :include, Griddleware::BrowserHelper