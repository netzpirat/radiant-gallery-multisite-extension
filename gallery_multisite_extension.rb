class GalleryMultisiteExtension < Radiant::Extension
  version "0.1"
  description "Scopes galleries to sites. It requires the spanner fork of multi_site"
  url "http//github.com/netzpirat/radiant-gallery-multisite-extension"

  def activate
    Gallery.send :is_site_scoped
    #admin.text_asset.index.add :top, "admin/shared/site_jumper"
  end
  
end
