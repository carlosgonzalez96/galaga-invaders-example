class Ship
  WIDTH = 100
  HEIGHT = 200
  attr_acceccor :x :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_left
    x -= 5
  end

  def move_right
    x += 5
  end

  def fire
    @missile_coordinates << [x, y - HEIGHT / 2]
  end

  def draw
    # Ignore this
  end
end

class Missile
  def initialize()
    @missile_coordinates = []
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end

  def draw_missiles
    @missile_coordinates.each do |missile|
    end
  end
end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
  It gives is a better understandment of that a object is doing and makes implementation more easier to read.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  Single responsibility
  Open-closed
  Liskov substitution
  Interface segregation
  Dependency inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  True, but somtimes its importatnt to implemt the featur now and then got bac an refactor the design.
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  Exemplary-the code itself should encourage those who change it to perpetuate these qualities.
5. How does applying SRP naturally lead to good design?
  better readability, better design flow for project, and better working code for future use.
=end
