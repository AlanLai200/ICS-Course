def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      else
        return false
      end
    else
      puts "Please enter either yes or no."
    end
  end
end
puts ask "Do you like candy?"
