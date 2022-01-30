nx = 200
ny = 100

puts "P3\n#{nx} #{ny}\n255\n"
(0..(ny-1)).reverse_each do |j|
  (0..(nx-1)).each do |i|
    r = i.to_f / nx.to_f
    g = j.to_f / ny.to_f
    b = 0.2
    ir = (255.99 * r).to_i
    ig = (255.99 * g).to_i
    ib = (255.99 * b).to_i
    puts "#{ir} #{ig} #{ib}\n"
  end
end
