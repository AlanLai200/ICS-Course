puts "What\'s your favorite number?'"
theirNumber = gets.chomp
betternumber = theirNumber.to_i + 1
puts theirNumber.to_s + " is a good number, but " + betternumber.to_s + " is better."
