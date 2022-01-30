class Ray
  def initialize(a, b)
    @A = a
    @B = b
  end

  def origin() @A end
  def direction() @B end
  def point_at_parameter(t) @A + t * @B end
end
