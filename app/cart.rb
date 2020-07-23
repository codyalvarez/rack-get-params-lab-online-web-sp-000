class Cart
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/cart/) ## if were running this code, that means the user visited our site via at path /cart
    if @@cart.size == 0     ## if it is here that we check cart array to see if its empty
      resp.write "Your cart is empty"
    elsif
      @@cart.each do |item|
        resp.write "#{item}\n"
      else
        "Path Not Found"
      end
    end


    end
