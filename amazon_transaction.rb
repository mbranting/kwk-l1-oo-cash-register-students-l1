# Code your cash register here!
require 'colorize'

class Amazon
attr_accessor :brand, :price, :description
  def initialize(brand, price, description)
    @brand = brand
    @price = price
    @description = description
  end
end    

cup = Amazon.new("Duck Dynasty", 10, "Premium quality, light green color, and it is made of plastic.")
purse = Amazon.new("coach", 500, "Top of the line, made of leather.")
hydroflask = Amazon.new("hydroflask", 40, "It is a light blue color. Comes with the sports cap and straw.")
mug = Amazon.new("Generic", 6, "Ivory white with a gold finish on the rim.")
rug = Amazon.new("World of Rugs", 100, "Fiesta print with bold reds and greens. Made of 100% cotton.")
sweater = Amazon.new("American Eagle", 15, "Nude colored made with 100% cotton.")
earrings = Amazon.new("Kay", 420, "Simple yet sophisticated, made with silver and copper.")


amazon = {
"cup" => 10,
"purse" => 500,
"hydroflask" => 40,
"mug"=> 6,
"rug"=> 100,
"sweater"=> 15,
"earrings" => 420
}

#1st loop: description of items
loop do 
  puts "Would you like to see the description of any of these items (yes/no)?".green
  puts amazon
  answer = gets.chomp
  if answer.downcase == "yes"
    puts ""
    puts "Which item?".green
    solution = gets.chomp
    if solution.downcase == "purse" 
      @answer = purse
    end
    if solution.downcase == "cup" 
      @answer = cup
    end
    if solution.downcase == "hydroflask"
      @answer = hydroflask
    end
    if solution.downcase == "mug"
      @answer = mug
    end
    if solution.downcase == "rug"
      @answer = rug
    end
    if solution.downcase == "sweater"
      @answer = sweater
    end
    if solution.downcase == "earrings"
      @answer = earrings
    end
    puts ""
    puts @answer.brand.cyan
    puts @answer.description.cyan
    puts ""
  else
    break
  end
end

#the shopping cart array
shopping_cart = []

#2nd loop: adding items to shopping cart array
loop do
  puts ""
  puts "Would you like to add an item to cart(Y/N)?".green
  answer=gets.chomp 
  if answer.downcase == "no" || answer.downcase == "n"
    break
  end
  if answer.downcase == "yes" || answer.downcase == "y"
    puts amazon
  puts ""
  puts "Which item?".green
  answer=gets.chomp
  shopping_cart << answer
  puts ""
  puts "#{answer.capitalize} has been successfully added to your cart".cyan
  puts ""
  puts "Would you like to view cart (Y/N)?"
  answer = gets.chomp
  if answer.downcase == "yes" || answer.downcase == "y"
    puts ""
    puts "Items in cart:".cyan
    puts shopping_cart
end
end
end
  
#3rd loop: removing items from shopping cart array 
loop do 
  puts ""
  puts "Would you like to remove an item from cart(Y/N)?".green
  answer = gets.chomp
  if answer.downcase == "no" || answer.downcase == "n"
    break
  end
  if answer.downcase == "yes" || answer.downcase == "y"
    puts ""
  puts "What item would you like to remove?".green
  puts "Items currently in cart:".cyan
puts shopping_cart
answer = gets.chomp
shopping_cart.delete(answer)
puts ""
puts "#{answer.capitalize} has been successfully removed from your cart".cyan
puts ""
puts "Would you like to view cart (Y/N)?".green
  answer = gets.chomp
  if answer.downcase == "yes" || answer.downcase == "y"
    puts ""
    puts "Items in cart:".cyan
    puts shopping_cart
end
end

end

    
#Any last changes loop (loop before checkout)(from lines: 
loop do 
  puts ""
  puts "Is there anything in your cart you would like to change before proceeding to checkout?".green
  answer = gets.chomp
  if answer.downcase == "no" || answer.downcase == "n"
    break
end
  if answer.downcase == "yes" || answer.downcase == "y"
   puts ""
    puts "Would you like to add or remove an item from your cart (add/remove)?".green
    answer = gets.chomp
    if answer.downcase == "yes"
      puts "Please specify which action (add/remove).".red
    end
    if answer.downcase == "add"
  puts ""
  puts "What would you like to add to cart?".green
    puts amazon
  answer=gets.chomp
  shopping_cart << answer
  puts ""
  puts "#{answer.capitalize} has been successfully added to your cart".cyan
  else 
    puts ""
end
end
    if answer.downcase == "remove"
puts ""
puts "What item would you like to remove?".green
puts "Items currently in cart:".cyan
puts shopping_cart
thing = gets.chomp
shopping_cart.delete(thing)
puts ""
puts "#{thing.capitalize} has been successfully removed from your cart".cyan
end
    if answer.downcase == "no"
      loop do 
  puts ""
  puts "Would you like to see the description of any items?".green
  puts amazon
  answer = gets.chomp
  if answer.downcase == "yes"
    puts ""
    puts "Which item?".green
    solution = gets.chomp
    if solution.downcase == "purse" 
      @answer = purse
    end
    if solution.downcase == "cup" 
      @answer = cup
    end
    if solution.downcase == "hydroflask"
      @answer = hydroflask
    end
    if solution.downcase == "mug"
      @answer = mug
    end
    if solution.downcase == "rug"
      @answer = rug
    end
    if solution.downcase == "sweater"
      @answer = sweater
    end
    if solution.downcase == "earrings"
      @answer = earrings
    end
    puts ""
    puts @answer.brand.cyan
    puts @answer.description.cyan
    puts ""
  else
    break
  end
end
end
end

total = 0
#checkout 
if shopping_cart.include? "purse"
  total += purse.price
end
if shopping_cart.include? "cup"
  total += cup.price
end
if shopping_cart.include? "hydroflask"
  total += hydroflask.price
  
end
if shopping_cart.include? "mug"
  total += mug.price
 
end
if shopping_cart.include? "rug"
  total += rug.price
  
end
if shopping_cart.include? "sweater"
  total += sweater.price
 
end
if shopping_cart.include? "earrings"
  total += earrings.price
end
puts ""
puts "Your total today is $#{total}.".red
puts "Thank you for shopping at Amazon!"
