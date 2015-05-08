# This class has x,y coordinates and <insert some behaviour>
class Application::Coordinate
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end
