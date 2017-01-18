class River

  attr_reader :name

  def initialize(name)

    @name = name
    @fish = Array.new
  end

    def count_fish()
      @fish.count
    end

    def gain_fish(fish)
      @fish << fish
    end

    def loses_fish(fish)
      @fish.delete(fish)
    end


end
