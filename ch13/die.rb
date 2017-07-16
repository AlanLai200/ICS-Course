class Die
  def initialize
    roll
  end

  def roll
    @showing = rand(0..6)
  end

  def showing
    @showing
  end

  def cheat(number)
    if number < 1 || number > 6
      puts "Yeah, that ain't logic"
    else
      @showing = number
    end
  end
end

Die.new.cheat(7)
puts Die.new.showing
Die.new.roll
puts Die.new.showing
