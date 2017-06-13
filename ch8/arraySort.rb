puts "Enter words for me to sort!"
words = []
while true
  word = gets.chomp
  if word == ""
    break
  else
    words.push word
  end
end
puts "Your words have been sorted!"
puts words.sort
