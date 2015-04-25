$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm_google_oauth2/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm_google_oauth2"
  s.version     = FfcrmGoogleOauth2::VERSION
  s.authors     = ["DmitriySalko"]
  s.email       = ["dm.salko@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FfcrmGoogleOauth2."
  s.description = "TODO: Description of FfcrmGoogleOauth2."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "pg"
end
