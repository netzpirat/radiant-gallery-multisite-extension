module GalleryMultisite::GalleryImportingsControllerExtensions
  def self.included(base)
    base.class_eval {
      alias_method_chain :import_path, :site
    }
  end

  def import_path_with_site
    if current_site.base_domain.blank?
       import_path_without_site
    else
      File.join(galleries_absolute_path, 'import', current_site.base_domain)
    end
  end
end 
