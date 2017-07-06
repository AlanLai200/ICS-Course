birthdays = {}
File.read("birthdays.txt").each_line do |line|
  line = line.chomp
  comma_location = 0
  a = line.length
  while true
    if line[comma_location] == ","
      break
    else
      comma_location += 1
    end
  end
  name = line[0..(comma_location-1)]
  date = line[(comma_location+2)..a]

  birthdays[name]= date
end
puts "To find out a person's birthday, please enter their name."
name = gets.chomp
date = birthdays[name]
if date == nil
  puts "I do not know this person"
else
  puts date
end
