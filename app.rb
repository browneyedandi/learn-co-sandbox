# Write an Application to calculate additional fees for a rental car

puts "Welcome to the Rental Car Fee Checker! To begin, please enter your age"
age = gets.strip.to_i
puts "Age is #{age}"

minimum_rental_age = 21
if age < 21
  puts "Sorry, you are too young to rent a car."
elsif age >= 25
puts "You can rent without any additional fees"
else
  puts "How many days will you be renting for?"
  days_renting = gets.strip.to_i
  puts "Please enter your two digit state code"
  state = gets.strip
  fee_per_day = 20
  fee = days_renting * fee_per_day
  
  case state
  when "MI"
    fee += 20
  when "NY"
    fee += 25
  end
  puts "You will owe #{fee}"
  
end