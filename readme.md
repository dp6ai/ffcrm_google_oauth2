# Google OAuth2 Support for FatFree CRM

To use add the following to your Gemfile

```
gem 'ffcrm_google_oauth2', git: "git@github.com:DmitriySalko/ffcrm_google_oauth2.git", branch: 'master'
gem 'omniauth' 
gem 'omniauth-google-oauth2'
```

And add the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
end
```

Currently only PostgreSQL database supported.

This project rocks and uses MIT-LICENSE.
