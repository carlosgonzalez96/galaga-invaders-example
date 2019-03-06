module Damagable
  attr_accessor :attacker
  def hit(location)
    @attacker = attacker
    if @attacker == location
      return 1
    else
      return 0
  end
end

module Destroyable
  #TODO
end

module Drawable (sprite)
  attr_accessor :location :sprite
  super
  
  def draw
    @location = args.fetch[:location]
    sprite = args.fetch[:sprite]
  end
end

class Structure
include Hitting

  DAMAGE = 1

  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
  end

  Damagable(location)
=begin 
  def hit?(attacker)
    # Returns true or false based on the simple linear distance
    # from `attacker.location` to `self.location`
  end
=end
  def damage
    @hit_points -= DAMAGE
  end

  def destroyed?
    @hit_points <= 0
  end

end
