class Document
  
  include Griddle::HasGridAttachment
  
  has_grid_attachment :image, :styles => {
    :thumb => "50x50#"
  }
  
  def id
    object_id
  end
  
end