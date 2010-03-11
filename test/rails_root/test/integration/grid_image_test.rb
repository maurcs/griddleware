require File.dirname(__FILE__) + '/../test_helper'

class GridImageTest < ActionController::IntegrationTest
  
  context "on GET to /grid/document/:id/:name/:style" do
    
    setup do
      @document = Document.new
      @dir = Rails.root + "test/fixtures/"
      @file = File.new(@dir + "baboon.jpg", 'rb')
      @document.image = @file
      @document.save_attached_files
    end
    
    should "return the image" do
      get @document.image.url  
      assert_equal @document.image.file.read, response.body
    end
    
    style_expectations.each do |style|
    
      should "return the image for #{style[0]}" do
        style_attachment = @document.image.send(style[0])
        get style_attachment.url  
        assert_equal style_attachment.file.read, response.body
      end
    
      should "response body is the correct size for #{style[0]}" do
        temp = Tempfile.new "#{style[0]}.jpg"
        style_attachment = @document.image.send(style[0])
        
        get style_attachment.url  
        
        file_path = File.dirname(temp.path) + '/' + style_attachment.file_name
        File.open(file_path, 'w') do |f|
          f.write response.body
        end
        cmd = %Q[identify -format "%[fx:w] x %[fx:h]" #{file_path}]
        
        assert_equal style[1], `#{cmd}`.chomp
      end
      
    end
    
  end
  
end
