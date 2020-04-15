require_relative '../config/environment'

puts "Please enter the name you would like to go by."
name = gets.chomp
puts "Please enter your age."
age = gets.chomp
if age.instance_of?(Fixnum) && (age < 99)
    puts "Your account has been created."
elsif age.instace_of?(Fixnum) && (age < 21)
    puts "You must be above 21 to use this app."
elsif
    puts "Please enter a valid age."
end

    


