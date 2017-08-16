require 'pubnub'

@pubnub = Pubnub.new(
    subscribe_key: 'demo',
    publish_key: 'demo',
    error_callback: lambda do |msg|
      puts "Error callback says: #{msg.inspect}"
    end,
    connect_callback: lambda do |msg|
      puts "CONNECTED: #{msg.inspect}"
    end
)

@cb = lambda { |envelope| print envelope.message }
@channel = "pubnub_mailer_demo"

def publish_message
	currency = "USD"

  # Google
	google_stock_price = rand((730.00)...(750.00)).round(2)
  google_object = {company: "Google", stock_price: google_stock_price, currency: currency}

  # Apple
  apple_stock_price = rand((100.00)...(110.00)).round(2)
  apple_object = {company: "Apple", stock_price: apple_stock_price, currency: currency}

  msg = [google_object, apple_object]
	@pubnub.publish(message: msg, channel: @channel, callback: @cb)
end

while true
	publish_message
	sleep 2
end


# Sample data:
#   [
#     {
#       "company": "Google",
#       "stock_price": "750.00",
#       "currency": "USD"
#     },
#     {
#       "company": "Apple",
#       "stock_price": "100.00",
#       "currency": "USD"
#     }
#   ]

