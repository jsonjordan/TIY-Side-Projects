require "pry"

def get_dimensions
  dimensions = []
  puts "enter horizontal dimension for board"
  dim_x = gets.chomp.to_i
  dimensions.push dim_x
  puts "enter vertical dimension for board"
  dim_y = gets.chomp.to_i
  dimensions.push dim_y

  dimensions
end

def generate_key dimensions
  key = (1..(dimensions.first*dimensions.last)).to_a
end


puts generate_key(get_dimensions)
