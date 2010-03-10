require 'helper'

class TestGriddleware < Test::Unit::TestCase
  all_models
  
  context "A document with a Griddle::Attachment" do
    
    setup do
      @document = Document.new
    end
    
    should "have a url method" do
      assert @document.respond_to? :url
    end
    
    should "default to url returning the grid_key" do
      assert_equal @document.image.grid_key, @document.image.url
    end
    
  end
  
end
