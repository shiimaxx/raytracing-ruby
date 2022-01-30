require_relative "./vec3"
require_relative "./ray"

def color(r)
  unit_direction = unit_vector(r.direction())
  t = 0.5 * (unit_direction.y() + 1.0)
  Vec3.new(1.0, 1.0, 1.0) * (1.0 - t) + Vec3.new(0.5, 0.7, 1.0) * t
end

nx = 200
ny = 100
puts "P3\n#{nx} #{ny}\n255\n"
lower_left_corner = Vec3.new(-2.0, -1.0, -1.0)
horizontal = Vec3.new(4.0, 0.0, 0.0)
vertical = Vec3.new(0.0, 2.0, 0.0)
origin = Vec3.new(0.0, 0.0, 0.0)
(0..(ny-1)).reverse_each do |j|
  (0..(nx-1)).each do |i|
    u = i.to_f / nx.to_f
    v = j.to_f / ny.to_f
    r = Ray.new(origin, lower_left_corner + horizontal * u + vertical * v)
    col = color(r)
    ir = (255.99 * col[0]).to_i
    ig = (255.99 * col[1]).to_i
    ib = (255.99 * col[2]).to_i

    puts "#{ir} #{ig} #{ib}\n"
  end
end
