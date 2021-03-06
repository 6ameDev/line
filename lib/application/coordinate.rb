# This class has x, y coordinates and calculates distance
class Application::Coordinate
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_from(coordinate)
    diff_x = ((@x - coordinate.x)).abs
    diff_x += 1 unless @x == 0 || coordinate.x == 0 || @x == coordinate.x
    diff_y = ((@y - coordinate.y)).abs
    diff_y += 1 unless @y == 0 || coordinate.y == 0 || @y == coordinate.y
    Math.sqrt((diff_x ** 2) + (diff_y ** 2))
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
