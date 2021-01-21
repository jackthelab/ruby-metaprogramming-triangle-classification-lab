class Triangle

  attr_reader :a, :b, :c

  @@all = []
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [self.a, self.b, self.c].include?(0)
      raise TriangleError
    elsif self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
      raise TriangleError
    elsif self.a == self.b && self.a == self.c
      return :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    #
  end

  def self.all
    @@all
  end

end
