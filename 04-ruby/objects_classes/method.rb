require "pry"

# brackets optional around parameter
def double_me number
  if number > 5
    return number + number
  else
    return 1
  end
  11 #implied return the last expression
end

binding.pry

double_me(4)
