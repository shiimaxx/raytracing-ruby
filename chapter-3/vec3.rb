class Vec3
  attr_accessor :e

  def initialize(e0, e1, e2)
    @e = [e0, e1, e2]
  end

  def x() @e[0] end
  def y() @e[1] end
  def z() @e[2] end
  def r() @e[0] end
  def g() @e[1] end
  def b() @e[2] end

  def [](i) @e[i] end

  def +(v2)
    if v2.instance_of?(Vec3)
      Vec3.new(@e[0] + v2.e[0], @e[1] + v2.e[1], @e[2] + v2.e[2])
    else
      Vec3.new(@e[0] + v2, @e[1] + v2, @e[2] + v2)
    end
  end

  def -(v2)
    if v2.instance_of?(Vec3)
      Vec3.new(@e[0] - v2.e[0], @e[1] - v2.e[1], @e[2] - v2.e[2])
    else
      Vec3.new(@e[0] - v2, @e[1] - v2, @e[2] - v2)
    end
  end

  def *(v2)
    if v2.instance_of?(Vec3)
      Vec3.new(@e[0] * v2.e[0], @e[1] * v2.e[1], @e[2] * v2.e[2])
    else
      Vec3.new(@e[0] * v2, @e[1] * v2, @e[2] * v2)
    end
  end

  def /(v2)
    if v2.instance_of?(Vec3)
      Vec3.new(@e[0] / v2.e[0], @e[1] / v2.e[1], @e[2] / v2.e[2])
    else
      Vec3.new(@e[0] / v2, @e[1] / v2, @e[2] / v2)
    end
  end

  def length()
    Math.sqrt(@e[0] * @e[0] + @e[1] * @e[1] + @e[2] * @e[2])
  end
end

def unit_vector(v) v / v.length() end
