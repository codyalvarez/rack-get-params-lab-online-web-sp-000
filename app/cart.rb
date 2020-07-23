class Cart
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/cart/)
    if @@cart.size == 0
      resp.write "Your cart is empty"
    else
      @@cart.each do |item|
        resp.write "#{item}\n"
      end
    end
  end
end
