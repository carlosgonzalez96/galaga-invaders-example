require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.launch_for(ship)
    end
    if key == 'p'
      missiles.launch_for(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  T, it creates dependencies
2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
  • The name of another class. Gear expects a class named Wheel to exist.
  • The name of a message that it intends to send to someone other than self.
    Gear expects a Wheel instance to respond to diameter.
  • The arguments that a message requires. Gear knows that Wheel.new requires a
    rim and a tire.
  • The order of those arguments. Gear knows the first argument to Wheel.new
    should be rim, the second, tire.

3. What are two primary factors to consider when assessing the risk of a dependency?
  • make sure if an object has any depenencies.
  • make sure dependencies doesnt effect of ther class.
4. What is Metz's rule of thumb for choosing a dependency direction?
  • to control the dependencies.  
=end
