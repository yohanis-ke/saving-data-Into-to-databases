class Draw

def draw_shape(options)
  shape = ""

  options[:rows].times do |r|
    options[:cols].times do |c|
      shape += options[:char]
    end
    shape += "\n"
  end

  return shape
end

end

draw=Draw.new
options1 = { :rows=> 4,:cols=> 4,:char=> "*"}
options2 = { :rows=> 3,:cols=> 9,:char=> "0"}

puts draw.draw_shape(options1)
puts draw.draw_shape(options2)
