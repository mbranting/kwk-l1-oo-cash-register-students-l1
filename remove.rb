
shopping_cart = ["purse", "cup"]
purse = 10
cup = 12
  puts ""
 shopping_cart.to_s.gsub('"',' ') 
 shopping_cart.each do |total|
 puts total
end