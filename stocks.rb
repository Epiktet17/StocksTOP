price = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
  buy = 0
  sell = 0
  profit = 0
  prices.each_with_index do |element, index|
    
    prices.each_with_index do |element2, index2|
      if prices.find_index(element) < prices.find_index(element2)
        if (element2 - element) > (sell-buy)
          profit = element2 - element
          buy = element
          sell = element2
        end
      end
      
    end
  end
  puts "Buy @day: #{prices.find_index(buy)+1} at the price of #{buy}€. And sell @day: #{prices.find_index(sell)+1} at the price of #{sell}€"
  puts "For a total profit of #{profit}€"
end
stock_picker(price)