class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @og_count = 0
    @pick_og = 0
    @alive = true
  end
  def oneYearPasses
    if @alive
      @height = @height + 2
      @age = @age + 1
      alive?
      if @age >= 3
        if @alive == true
          @og_count = 5*@age
          puts "This year the tree is " + @height.to_s + " inches and grew " + @og_count.to_s
        else
          @og_count = 0
          puts "The tree is dead"
        end
      else
        @og_count = 0
        puts "This year the tree is " + @height.to_s + " inches, but it is too young to produce fruits"
      end
    else
      puts "The tree is dead"
    end
  end
  def og_count
    if @age >= 3
      if @alive == true
        @og_count
      else
        puts "Dead trees do not produce oranges"
      end
    else
      puts "Your tree is too young to produce oranges"
    end
  end
  def pick_og(number)
    if number > @og_count
      puts "That's too many oranges! You collected only " + @og_count
    else
      @og_count -= number
      puts "You collected " + number.to_s

    end
  end
  def height
    if @alive
      @height.to_s + " inches"
    else
      puts "Dead trees are not tall at all"
    end
  end
  def age
    if @alive
      @age
    else
      puts "Dead trees do not have a age"
    end
  end
  private
  def alive?
    if @age >= 7
      @alive = false
    end
  end
end
ot = OrangeTree.new
puts(ot.oneYearPasses)
puts(ot.oneYearPasses)
puts(ot.oneYearPasses)
puts(ot.oneYearPasses)
puts(ot.oneYearPasses)
puts(ot.pick_og(5))
puts(ot.og_count)
