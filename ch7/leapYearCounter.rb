puts "What year is that start year?"
ayear = gets.chomp
puts "What year is the end year?"
byear = gets.chomp
while ayear.to_i <= byear.to_i
  if ayear.to_i%4 == 0
    if ayear.to_i%100 != 0 || ayear.to_i%400 == 0
      puts "This is a leapyear "+ayear.to_s
      ayear = ayear.to_i + 1
    else
      ayear = ayear.to_i + 1
    end
  else
    ayear = ayear.to_i + 1
  end
end
