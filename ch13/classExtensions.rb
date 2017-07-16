class Array
  def shuffle
    some_array = self
    recursive_shuffle some_array, []
  end
  def recursive_shuffle unsorted_array, shuffle_array
    if unsorted_array.length <= 0
      return shuffle_array
    else
      x = unsorted_array.length
      y = rand(0..(x-1))
      not_shuffled_array = []
      unsorted_array.each do |test|
        if test == unsorted_array[y]
          shuffle_array.push test
        else
          not_shuffled_array.push test
        end
      end
    end
    recursive_shuffle not_shuffled_array, shuffle_array
  end
end
class Integer
  def factorial
    if self <= 1
      number = 1
    else
      number = self * (self-1).factorial
    end
    number
  end
  def toRoman
    number = self
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
        if number.to_i >= 900
          convert = "CM"
          roman.push convert
          number = number.to_i - 900
        else
          if number.to_i >= 500
            convert = "D"
            roman.push convert
            number = number.to_i - 500
          else
            if number.to_i >= 400
              convert = "CD"
              roman.push convert
              number = number.to_i - 400
            else
              if number.to_i >= 100
                cvar=number.to_i/100
                convert = "C"*cvar.to_i
                roman.push convert
                number = number.to_i - 100*cvar.to_i
              else
                if number.to_i >= 90
                  convert = "XC"
                  roman.push convert
                  number = number.to_i - 90
                else
                  if number.to_i >= 50
                    convert = "L"
                    roman.push convert
                    number = number.to_i - 50
                  else
                    if number.to_i >= 40
                      convert = "XL"
                      roman.push convert
                      number = number.to_i - 40
                    else
                      if number.to_i >= 10
                        xvar = number.to_i/10
                        convert = "X"*xvar
                        roman.push convert
                        number = number.to_i - 10*xvar.to_i
                      else
                        if number.to_i == 9
                          convert = "IX"
                          roman.push convert
                          break
                        else
                          if number.to_i >=6 && number.to_i < 9
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
                              if number.to_i == 4
                                convert = "IV"
                                roman.push convert
                                break
                              else
                                number.to_i <=3
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
              end
            end
          end
        end
      end
    end
    roman.join
  end
end
puts [1,2,3,4,5].shuffle
puts 5.factorial

puts 73.toRoman
