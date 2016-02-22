class Bear 

attr_accessor(:name, :type, :roar, :tummy)

  def initialize( name, type, roar, tummy )
      @name = name
      @type = type
      @tummy = tummy
      @roar = roar
  end

  def fish_in_river( river )
    fish_to_eat = river[-1]
    @tummy << fish_to_eat
    river.pop
  end


end
