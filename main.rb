require_relative './.api_key.rb'

API_KEY = $api_key
PREFIX = 'https://api.twelvedata.com'
QUOTE_ENDPOINT = '/quote'
PRICE_ENDPOINT = '/price'
SYMBOL = 'GME'
INTERVAL = '1min'
EXCHANGE = 'NYSE'
TYPE = 'Stock'
FORMAT = 'JSON'

puts API_KEY