beers = 99
while beers != 0
  if beers >= 3
    puts beers.to_s + " bottles of beer on the wall, " + beers.to_s + " bottles of beer."
    beers = beers - 1
    puts "Take one down and pass it around, " + beers.to_s + " bottles of beer on the wall."
  else
    puts "2 bottles of beer on the wall, 2 bottles of beer!"
    puts "Take one down, pass it around, 1 bottle of beer on the wall!"
    beers = beers - 1
    puts "1 bottle of beer on the wall, 1 bottle of beer!"
    puts "Take one down, pass it around, no more bottles of beer on the wall!"
    beers = beers - 1
  end
end
