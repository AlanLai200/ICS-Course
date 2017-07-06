puts "Enter the year you were born."
year = gets.chomp
puts "Enter the month you were born."
month = gets.chomp
puts "Enter the day you were born."
day = gets.chomp
puts "Enter the hour you were born."
hour = gets.chomp
puts "Enter the minute you were born."
minute = gets.chomp
time = (Time.local(year, month, day, hour, minute)+ 1000000000)
puts "You will be one billion seconds old at " + time.to_s
