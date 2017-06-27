def sort some_array
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  else
    smallest = unsorted_array.pop
    new_list = []
    unsorted_array.each do |test|
      if smallest.downcase > test.downcase
        new_list.push smallest
        smallest = test
      else
        new_list.push test
      end
    end
  end
  sorted_array.push smallest
  recursive_sort new_list, sorted_array
end

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
puts sort words
puts "Your words have been sorted!"
