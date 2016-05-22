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

def create_alpha dimensions
  alphabet = ("a".."z").to_a
  alpha = []
  i = 0
  until i == (dimensions.last)
    alpha.push (alphabet[i]*(dimensions.first)).split("")
    i += 1
  end
  alpha.flatten!
end

def create_numeric dimensions
  numbers = (1..26).to_a
  numeric = []
  i = 0
  until i == dimensions.first
    #binding.pry
    numeric.push (i + 1).to_s.split(" ")
    i += 1
  end
  numeric = numeric * (dimensions.last + 1)
  numeric.flatten!
end

def join_alpha_numeric dimensions
  key = []
  i = 0
  until i == (dimensions.first * dimensions.last)
  key.push (create_alpha(dimensions))[i].to_s + (create_numeric(dimensions))[i].to_s
  i += 1
  end
  key
end


dimensions = get_dimensions
create_alpha dimensions
create_numeric dimensions
generated_key = join_alpha_numeric dimensions


puts "generated key"
puts generated_key
