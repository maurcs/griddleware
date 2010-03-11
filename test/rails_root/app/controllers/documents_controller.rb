class DocumentsController < ApplicationController
  
  before_filter :destroy_database
  
  def index
    file_path = File.join(File.dirname(__FILE__), '..', '..', 'test', 'fixtures', 'baboon.jpg')
    @document = Document.new
    @document.image = File.new(file_path, 'rb')
    @document.save_attached_files
  end
  
  def destroy_database
    Griddle.database.collections.each do |coll|
      coll.remove
    end
  end
  
end