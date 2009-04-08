namespace :radiant do
  namespace :extensions do
    namespace :gallery_multisite do
      
      desc "Runs the migration of the Gallery Multisite extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          GalleryMultisiteExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          GalleryMultisiteExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Gallery Multisite to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from GalleryMultisiteExtension"
        Dir[GalleryMultisiteExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(GalleryMultisiteExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end
