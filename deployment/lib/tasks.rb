namespace :shared do
  desc "Symlinking files"
  task :make_symlinks, :roles => :web do
    # add any additional symlink tasks here
  end
  desc "Uploading Compiled stylesheets"
  task :upload_css, :roles => :app do
    set :app_path, File.expand_path("../application/") #Try using: File.expand_path("..",Dir.pwd)
    set :asset_path, "assets/css/compass"
    upload( "#{app_path}/#{asset_path}", "#{release_path}/application/#{asset_path}", { :via => :scp, :recursive => true } )
  end
end