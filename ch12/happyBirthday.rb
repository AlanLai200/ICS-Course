puts "Enter the year you were born."
years = gets.chomp
puts "Enter the month you were born."
months = gets.chomp
puts "Enter the day you were born."
days = gets.chomp
counter = 0
t = Time.new
today_year = t.year
today_month = t.month
today_day = t.day
while true
  if today_year == years
    if (today_month > months.to_i)
      puts "\nSPANK"*counter
      break
    else
      if today_month == months.to_i
        if today_day > days.to_i
          puts "\nSPANK"*counter
          break
        else
          counter = counter.to_i - 1
          puts "\nSPANK"*counter
          break
        end
      else
        if (today_month < months.to_i)
          counter = counter.to_i - 1
          puts "\nSPANK"*counter
          break
        else
          puts "stop"
          puts today_month
          puts months
          break
        end
      end
    end
  else
    counter = counter + 1
    years = years.to_i + 1
  end
end
