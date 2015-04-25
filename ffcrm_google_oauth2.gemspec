$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm_google_oauth2/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm_google_oauth2"
  s.version     = FfcrmGoogleOauth2::VERSION
  s.authors     = ["DmitriySalko"]
  s.email       = ["dm.salko@gmail.com"]
  s.homepage    = "https://github.com/DmitriySalko"
  s.summary     = "Allow users to login using their Google accounts"
  s.description = "Adds login using google button to login screen"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "fat_free_crm"
  s.add_dependency "omniauth"
  s.add_dependency "omniauth-google-oauth2"

  s.add_development_dependency "pg"
end
