require 'oauth2'

id ='CDDZEDCWOLYMUIYLGUKJIGNQKOCF3R0XOS0TGODAMHN4Y0A3'
secret = 'BVPP5ARCEGSUGLXI2BNZLBQ0OUVLUTQ1ZGXK54ORH10E5TTL'
client = OAuth2::Client.new(id, secret, site: 'http://foursquare.com')

client.auth_code.authorize_url(redirect_url:  'https://localhost:3000/oauth2/callback')

puts client