Rails.application.routes.draw do

  mount FfcrmGoogleOauth2::Engine => "/ffcrm_google_oauth2"
end
