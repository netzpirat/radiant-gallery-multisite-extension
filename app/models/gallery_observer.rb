class GalleryObserver < ActiveRecord::Observer
  observe Gallery

  cattr_accessor :current_user
  
end