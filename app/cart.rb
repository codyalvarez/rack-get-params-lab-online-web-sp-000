class Cart
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/cart/)
    if @@cart.size == 0
      resp.write "Your cart is empty"
    ## if were running this code, that means the user visited our site
    # at path /cart

    ## if it is here that we check cart array to see if its empty to give the user
    ## helpful message

    @@cart.each do |item|
      resp.write "#{item}\n"
    end
