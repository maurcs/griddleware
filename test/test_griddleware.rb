require 'helper'

class TestGriddleware < Test::Unit::TestCase
  all_models
  
  context "A document with a Griddle::Attachment" do
    
    setup do
      @document = Document.new
    end
    
    should "have a url method" do
      assert_equal @document.image.grid_key, @document.image.url
    end
    
  end
  
end
