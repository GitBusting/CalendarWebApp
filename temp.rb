require 'net/http'
require 'uri'

url = 'https://safe-sea-33768.herokuapp.com/users'
uri = URI.parse(url)

params = {'name' => 'name1'}

Net::HTTP.post_form(uri, params)
