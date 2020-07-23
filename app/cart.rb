class Cart
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/cart/)
      @@cart.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)

      search_term = req.params["q"]

      if @@cart.include?(search_term)
        resp.write "#{search_term} is one of out items"
      else 
        resp.write "Couldn't find #{search_term}"
      end

    else
      resp.write "Path Not Found"
    end

    resp.finish
  end
end
