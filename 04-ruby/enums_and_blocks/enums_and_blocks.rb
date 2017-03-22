require 'pry'

song = {
  title: 'hello',
  released: 1980
}

hackers = ['john smith','mary jane','jon snow']
# ['JOHN SMITH', etc...] --> new_arr.push.(hacker.upcase)
# ['john', 'mary','jon'] --> new_arr.push(hacker.split(' ').first)

new_arr = []

# hackers.each do |hacker|
#
#   new_arr.push(hacker.split(' ').first)
#
# end


# map - transform

new_arr = hackers.map do |hacker|

  hacker.upcase

end

# between the do end - blocks

#return hello
        #1980
song.each do |elem|
   puts elem.last
end

song.each do |key, val|
  puts val
end


numbers = [2,5,7,4,9]

#return odd numbers [5,7,9]
numbers.select do |num|
  num.odd?
end

#return even numbers [2,4]
numbers.select do |num|
  num % 2 == 0
end



binding.pry
