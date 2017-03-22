
# user enter a list of full names "Daniel Tsui" separated by comma
# I want to creaet directories for each first name only lowercased
# /daniel
# and inside each directory create a new file README.md
# given a list of names
#I want to create directories for each names
#and inside each directory create a new file

require 'fileutils' #standard library
require 'pry' #because i need the debugging method

puts "enter names separated by comma"
hackers = gets.chomp.split(', ')

# index = 0
# while index <= hackers.length
hackers.each do |hacker|
  folder_name = hacker.split(' ')[0].downcase().strip
  FileUtils.mkdir folder_name
  FileUtils.cd(folder_name) do
    FileUtils.touch 'README.md'
  end
end

#   index = index + 1

hackers.each do |hacker| #Enter a block
  puts hacker + '!'
end
=begin
test
=end

# hackers = ["kerry", "will", "sam"]

# while condition
# end
# index = 0
# while index <= 2
#   puts hackers[index]
#   index = index+1
# end

# loop do
# end
