require_relative "./vec3"
require_relative "./ray"

def hit_sphere?(center, radius, r)
  oc = r.origin() - center
  a = dot(r.direction(), r.direction())
  b = 2.0 * dot(oc, r.direction())
  c = dot(oc, oc) - radius * radius
  discriminant = b * b - 4 * a * c
  discriminant >= 0
end

def color(r)
  if hit_sphere?(Vec3.new(0, 0, -1), 0.5, r)
    return Vec3.new(1, 0, 0)
  end
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
