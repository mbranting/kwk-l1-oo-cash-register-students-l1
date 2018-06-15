def fizzbuzz
  number = gets.chomp.to_i
  if number %3==0 && number %5==0
    puts "FizzBuzz"
  elsif number %3==0 
    puts "Fizz"
  elsif number %5==0
    puts "Buzz"
  else 
    puts "nil"
  end
end
fizzbuzz
