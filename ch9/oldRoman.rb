puts "Please enter a number and I will return the old school roman numeral!"
number = gets.chomp.to_i
convert = ""
mvar=""
cvar=""
xvar=""
revar=""
roman = []
while true
  if number.to_i >=1000
    mvar = number.to_i/1000
    convert = "M"*mvar
    roman.push convert
    number = number.to_i - 1000*mvar
  else
    if number.to_i >= 500
      convert = "D"
      roman.push convert
      number = number.to_i - 500
    else
      if number.to_i >= 100
        cvar=number.to_i/100
        convert = "C"*cvar.to_i
        roman.push convert
        number = number.to_i - 100*cvar.to_i
      else
        if number.to_i >= 50
          convert = "L"
          roman.push convert
          number = number.to_i - 50
        else
          if number.to_i >= 10
            xvar = number.to_i/10
            convert = "X"*xvar
            roman.push convert
            number = number.to_i - 10*xvar.to_i
          else
            if number.to_i >=6
              revar= number.to_i%5
              convert = "V" + "I"*revar
              roman.push convert
              break
            else
              if number.to_i == 5
                convert = "V"
                roman.push convert
                break
              else
                number.to_i <=4
                convert = "I"*number.to_i
                roman.push convert
                break
              end
            end
          end
        end
      end
    end
  end
end
puts "I have converted your number into old roman numberal!"
puts roman.join
