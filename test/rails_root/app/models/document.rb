class Document
  
  include Griddle::HasGridAttachment
  
  has_grid_attachment :image
  
  def id
    object_id
  end
  
end