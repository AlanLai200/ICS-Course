def convert roman
  number = 0
  c = 0
  place = roman.length - 1
  letters = ["I","V","X","L","C","D","M","i","v","x","l","c","d","m"]
  counter = roman.length-1
  while counter >= 0
    b= letters.include? (roman[counter])
    if b == true
      break
    elsif b == false
      puts "Please enter a modern roman number"
      return
    end
  end
  while place >= 0
    if roman[place].upcase == "I"
      number += 1
      place -=  1
      if number >=4
        puts "Please enter a modern roman number"
        return
      end
    else
      if (roman[place].upcase == "V")
        place -= 1
        if place < 0
          number += 5
          break
        else
          place += 1
          if roman[place-1].upcase == "I"
            number += 4
            place -=2
          elsif roman[place-1].upcase == "V"
            puts "Please enter a modern roman number"
            return
          else
            if roman[place].upcase == "V"
              number += 5
              place -= 1
            end
          end
        end
      else
        if roman[place].upcase == "X"
          place -= 1
          if place < 0
            number += 10
            break
          else
            place += 1
            if roman[place-1].upcase == "I"
              number += 9
              place -= 2
            else
              a= 0
              while place >= 0
                if roman[place].upcase == "X"
                  a += 10
                  place -= 1
                  number += 10
                  if a >= 40
                    puts "Please enter a modern roman number"
                    return
                  end
                else
                  break
                end
              end
            end
          end
        else
          if roman[place].upcase == "L"
            place -= 1
            if place < 0
              number += 50
              break
            else
              place += 1
              if roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L"
                puts "Please enter a modern roman number"
                return
              else
                if roman[place-1].upcase == "X"
                  number += 40
                  place -= 2
                  if place >=0 && (roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X")
                    puts "Please enter a modern roman number"
                    return
                  end
                else
                  number += 50
                  place -= 1
                end
              end
            end
          else
            if roman[place].upcase == "C"
              place -= 1
              if place < 0
                number += 100
                break
              else
                place += 1
                if roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L"
                  puts "Please enter a modern roman number"
                  return
                else
                  if roman[place-1].upcase == "X"
                    number += 90
                    place -= 2
                    if place >=0 && (roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X")
                      puts "Please enter a modern roman number"
                      return
                    end
                  else
                    while place >= 0
                      if roman[place].upcase == "C"
                        c += 100
                        place -= 1
                        number += 100
                        if c >= 400
                          puts "Please enter a modern roman number"
                          return
                        else
                          break
                        end
                      end
                    end
                  end
                end
              end
            else
              if roman[place].upcase == "D"
                place -= 1
                if place < 0
                  number += 500
                  break
                else
                  place += 1
                  if roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X" || roman[place-1].upcase == "D"
                    puts "Please enter a modern roman number"
                    return
                  else
                    if roman[place-1].upcase == "C"
                      number += 400
                      place -= 2
                      if place >=0 && (roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X" || roman[place-1].upcase == "C" || roman[place-1].upcase == "D")
                        puts "Please enter a modern roman number"
                        return
                      end
                    else
                      number += 500
                      place -= 1
                    end
                  end
                end
              else
                if roman[place].upcase == "M"
                  place -= 1
                  if place < 0
                    number += 1000
                    break
                  else
                    place += 1
                    if roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X" || roman[place-1].upcase == "D"
                      puts "Please enter a modern roman number"
                      return
                    else
                      if roman[place-1].upcase == "C"
                        number += 900
                        place -= 2
                        if place > 0 && (roman[place-1].upcase == "I" || roman[place-1].upcase == "V" || roman[place-1].upcase == "L" || roman[place-1].upcase == "X" || roman[place-1].upcase == "C" ||roman[place-1].upcase == "D")
                          puts "Please enter a modern roman number"
                          return
                        else
                          if roman[place].upcase == "M"
                            number += 1000
                            place -= 1
                          end
                        end
                      else
                        number += 1000
                        place -= 1
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
  puts number
end

puts "Please enter the roman numeral you would like converted to integers"
roman_num = gets.chomp
convert roman_num
