require File.dirname(__FILE__) + '/../test_helper'

class GridImageTest < ActionController::IntegrationTest
  # Replace this with your real tests.
  test "/grid/document/:id/:name/:style :get" do
    document = Document.new
    dir = Rails.root + "test/fixtures/"
    file = File.new(dir + "baboon.jpg", 'rb')
    document.image = file
    document.save_attached_files
    get document.image.url  
    puts response.body
    assert_equal document.image.file.read, response.body
  end
end
