def shuffle some_array
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


puts "Enter words for me to shuffle!"
words = []
while true
  word = gets.chomp
  if word == ""
    break
  else
    words.push word
  end
end
puts shuffle words
puts "Your words have been shuffled!"
