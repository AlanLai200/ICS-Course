beers = 99
while beers != 0
  puts beers.to_s + " bottles of beer on the wall, " + beers.to_s + " bottles of beer."
  beers = beers - 1
  puts "Take one down and pass it around, " + beers.to_s + " bottles of beer on the wall."
end
