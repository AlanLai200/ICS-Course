input = ""
while input != "BYE"
  input = gets.chomp
  if input == "BYE"
    puts "PEACE OUT"
  else
    if input == input.upcase
      puts "NO, NOT SINCE " + (rand (1930..1950)).to_s + "!"
    else
        puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end
