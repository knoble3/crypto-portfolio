class Currency < ApplicationRecord
  def current_price
    url = 'https://coingecko.com/api/simple/price'
    request = HTTParty.get(url + self.slug)
    response = JSON.parse(request.body)
  end
end

