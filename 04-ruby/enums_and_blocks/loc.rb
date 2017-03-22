# lines of code
#
require 'pry'
#
# filename = 'enums_and_blocks.rb'
#
# line_count = File.open(filename).count
#
# #line_count = IO.read(filename).split("\n").length
# #line_count = File.readLines(filename).length
#
# puts line_count
#
# line_count.close

filename = ARGV[0]

File.open(filename) do |file|

  puts file.count

end

binding.pry
