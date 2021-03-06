def english_number number
  if number < 0
    puts "Please enter a positive number"
  end
  if number == 0
    return "Zero"
  end
  num_string = ""
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
              'fourteen', 'fifteen', 'sixteen',
              'seventeen', 'eighteen', 'nineteen']
  big_numbers = ["million", "billion", "trillion", "Quadrillion",
                'Quintillion', "Nonillion", "Decillion"]
  left = number
  while big_numbers.length > 0
    x = big_numbers.length + 1
    big_num_name = big_numbers.pop
    write = left/ (10**(3*x)) # The formula I should be using is 10**(3*x+3)
                              # but that formula doesnt work yet this one doesnt
                              # can you explain to me why that is? It works now
                              # but in my mind the equation currently is wrong. 
    left = left - write * 10**((3*x))
    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + " " + big_num_name
      if left > 0
        num_string = num_string + " "
      end
    end
  end
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = english_number write
    num_string = num_string +thousands + " thousands"
    if left > 0
      num_string = num_string +" "
    end
  end
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundreds"
    if left > 0
      num_string = num_string + " "
    end
  end
  write = left/10
  left = left - write*10
  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left -1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string=num_string +"-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
puts "Enter a number to be converted to English!"
word = ""
word = gets.chomp
puts english_number (word.to_i)
puts "Your number is now in English"
