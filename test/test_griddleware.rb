require 'helper'

class TestGriddleware < Test::Unit::TestCase
  all_models
  
  context "A document with a Griddle::Attachment" do
    
    setup do
      @document = Document.new
      dir = File.dirname(__FILE__) + '/fixtures/'
      @file = File.new(dir + "baboon.jpg", 'rb')
      @document.image = @file
      @document.save_attached_files
    end
    
    should "have a url method" do
      assert @document.image.respond_to? :url
    end
    
    should "default to url returning the grid_key" do
      assert_equal "/grid/documents/#{@document.id}/image/baboon.jpg", @document.image.url
    end
    
    should "default to url for styles returning the grid_key" do
      assert_equal "/grid/documents/#{@document.id}/image/thumb/baboon.jpg", @document.image.thumb.url
    end
    
  end
  
end
