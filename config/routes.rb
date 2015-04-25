Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'authentications#callback'
end
