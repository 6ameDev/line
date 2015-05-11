# This class has coordinates as its state and it returns a length
class Application::Line
  attr_reader :coordinate_a, :coordinate_b
  def initialize(coordinate_1, coordinate_2)
    @coordinate_a = coordinate_1
    @coordinate_b = coordinate_2
  end

  def length
    @coordinate_a.distance_from(@coordinate_b)
  end

  def eql?(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false unless self.class == other.class
    (@coordinate_a == other.coordinate_a && @coordinate_b == other.coordinate_b) ||
      (@coordinate_a == other.coordinate_b && @coordinate_b == other.coordinate_a)
  end

  def ==(other)
    self.eql?(other)
  end

  def hash
    @coordinate_a.hash ^ @coordinate_b.hash
  end
end
