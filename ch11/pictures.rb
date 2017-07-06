Dir.chdir 'C:/Users/Alan Lai/Desktop/test'
pic_names = Dir['C:/Users/Alan Lai/Desktop/Phone Pictures/GroupMe/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
print '.'*pic_names.length
pic_number = 1
pic_names.each do |name|

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  while FileTest.exist? (new_name)
    print "\nWould you like to replace file " + pic_number.to_s
    puts
    answer = gets.chomp
    if answer.downcase == "yes" || answer.downcase == "no"
      if answer.downcase == "no"
        new_name = "a" + new_name
        break
      else
        break
      end
    else
      puts "Please enter yes or no."
    end
  end
    File.rename name, new_name
    pic_number = pic_number + 1
end
puts
puts 'Done!'
