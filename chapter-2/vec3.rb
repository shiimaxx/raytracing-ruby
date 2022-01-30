class Vec3
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
end
