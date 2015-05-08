# This class has x,y coordinates and <insert some behaviour>
class Application::Coordinate
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def eql?(other)
    return true if self.equal?(other)
    if(other.nil? || other.class != self.class)
      return false
    end
    @x == other.x && @y == other.y
  end

  def ==(other)
    self.eql?(other)
  end

  def hash
    @x.hash ^ @y.hash
  end
end
