class Document
  
  include Griddle::HasGridAttachment
  
  has_grid_attachment :image, :styles => {
    :thumb => "50x50#"
  }
  
end