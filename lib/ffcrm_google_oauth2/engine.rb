module FfcrmGoogleOauth2
  class Engine < ::Rails::Engine
    #isolate_namespace FfcrmGoogleOauth2
    config.to_prepare do
      require 'ffcrm_google_oauth2/controllers'
    end
  end
end
