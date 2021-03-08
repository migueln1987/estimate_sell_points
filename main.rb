require_relative './.api_key.rb'
require 'rest-client'
require 'json'

API_KEY = $api_key
PREFIX = 'https://api.twelvedata.com'
QUOTE_ENDPOINT = '/quote'
PRICE_ENDPOINT = '/price'
SYMBOL = 'GME'
INTERVAL = '1min'
EXCHANGE = 'NYSE'
TYPE = 'Stock'
FORMAT = 'JSON'

puts "API Key is: #{API_KEY}"

url = "#{PREFIX}#{PRICE_ENDPOINT}?symbol=#{SYMBOL}&apikey=#{API_KEY}"

puts "URL is: #{url}"

response = RestClient.get url

json_response = JSON.parse response
puts json_response['price']