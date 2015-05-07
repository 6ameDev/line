# This class has points as its state and it returns a length
class Application::Line
  attr_reader :point_a, :point_b
  def initialize(point_1, point_2)
    @point_a = point_1
    @point_b = point_2
  end

  def line_length
    diff_x = ((@point_a.first - @point_b.first)).abs
    diff_x += 1 unless @point_a.first == 0 || @point_b.first == 0 || @point_a.first == @point_b.first
    diff_y = ((@point_a.last - @point_b.last)).abs
    diff_y += 1 unless @point_a.last == 0 || @point_b.last == 0 || @point_a.last == @point_b.last
    Math.sqrt((diff_x ** 2) + (diff_y ** 2))
  end
end
