class River 

attr_accessor(:contents_of_river, :river_name)

  def initialize( contents_of_river, river_name )
      @contents_of_river = contents_of_river
      @river_name = river_name
  end

  def add(fish)
    @contents_of_river << fish.name
  end


end