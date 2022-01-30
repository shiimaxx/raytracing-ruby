require_relative "./vec3"

nx = 200
ny = 100
puts "P3\n#{nx} #{ny}\n255\n"
(0..(ny-1)).reverse_each do |j|
  (0..(nx-1)).each do |i|
    col = Vec3.new(i.to_f/ nx.to_f, j.to_f / ny.to_f, 0.2)
    ir = (255.99 * col[0]).to_i
    ig = (255.99 * col[1]).to_i
    ib = (255.99 * col[2]).to_i
    puts "#{ir} #{ig} #{ib}\n"
  end
end
