FOURSQUARE_CONFIG = YAML.load_file("#{::Rails.root}/config/config_foursquare.yml")[::Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :foursquare, FOURSQUARE_CONFIG['foursquare_key'], FOURSQUARE_CONFIG['foursquare_secret']
end