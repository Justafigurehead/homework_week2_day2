class Bear
  
  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = Array.new
  end


  def count_food()
    @stomach.count
  end

  def takes_fish(fish)
    @stomach << fish
  end

  def eat_fish(river)

    fish = river.losesfish(river)
  end
  
end
