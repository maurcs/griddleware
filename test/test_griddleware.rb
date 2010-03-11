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
    
    context "with styles" do
      
      style_expectations.each do |style|
            
        should "return a url for style #{style[0]}" do
          assert_equal "/grid/documents/#{@document.id}/image/#{style[0]}/baboon.jpg", @document.image.send(style[0]).url
        end
        
      end
      
    end
    
  end
  
end
