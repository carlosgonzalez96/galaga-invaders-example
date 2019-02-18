require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize
    @x = 200
    @y = 200
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
  end

  def fire(missiles)    
    missile.launch(10)
    missiles.add(missile)
  end

  def new_missile
    Missile.new({x, half_height, velocity: ordancance_velocity})
  end

  def ordancance_velocity
    10
  end

  def muzzle_location
    Vector.new(x, top_edge)
  end
  
  def bottom_edge
    y + HEIGHT / 2
  end

end
