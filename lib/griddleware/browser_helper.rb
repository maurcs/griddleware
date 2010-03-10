module Griddleware
  module BrowserHelper
  
    def url
      grid_key
    end
  
  end
end

Griddle::Attachment.send :include, Griddleware::BrowserHelper