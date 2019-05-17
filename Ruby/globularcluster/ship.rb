class Ship
  attr_accessor :velocity, :fuel, :dist, :ammo, :shield

  def initialize
    @velocity = 11.53
    @fuel = 5
    @dist = '?'
    @ammo = 10
    @shield = 100
  end

  def draw
    puts self
  end

  def to_s
    "    -----------------------------
    |velocity   : #{velocity} km/s\t|
    |fuel       : #{fuel} tons\t|
    |dist_to_end: #{dist} parsecs\t|
    |munition   : #{ammo} torpedos\t|
    |shield     : #{shield} %\t\t|
    -----------------------------"
  end

  def attack
    return (puts "Out of munitions!") if @ammo <= 0
    @ammo -= 1
  end

  def take_direct_route; end

  def take_circuitous_route; end
end
