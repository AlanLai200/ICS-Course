def clock &block
  if Time.new.hour >= 13
    hour = hour - - 12
    hour.times do
      block.call
    end
  else
    hour = Time.new.hour
    hour.times do
      block.call
    end
  end
end
clock do
  puts "Dong!"
end
