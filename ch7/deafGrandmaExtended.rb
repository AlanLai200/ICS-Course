input = ""
a= 0
while a != 1
  input = gets.chomp
  if input == "BYE"
    puts "HUH?! SPEAK UP, SONNY!"
    input = gets.chomp
      if input == "BYE"
        puts "HUH?! SPEAK UP, SONNY!"
        input = gets.chomp
          if input == "BYE"
            puts "PEACE OUT"
            a=1
          else
            puts "HUH?! SPEAK UP, SONNY!"
          end
      else
        puts "HUH?! SPEAK UP, SONNY!"
      end
  else
      if input == input.upcase
        puts "NO, NOT SINCE " + (rand (1930..1950)).to_s + "!"
      else
          puts "HUH?! SPEAK UP, SONNY!"
      end
    end
end
