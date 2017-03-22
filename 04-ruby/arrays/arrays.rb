require 'pry'

#1
# days_of_the_week = 'mon tue wed thu fri sat sun'.split(' ') -->create short array
days_of_the_week = %w(mon tue wed thu fri sat sun) #--> create long array

#2
#last_day = days_of_the_week.pop
days_of_the_week.unshift(days_of_the_week.pop) #or days_of_the_week.unshift(last_day)
days_of_the_week.rotate(1)


#3
days_of_the_week = [%w|mon tue wed thu fri|, %w{sat,sun}]

#4
days_of_the_week.pop

#5
days_of_the_week.flatten.sort #-->flatten change [[1,2],[3]] into [1,2,3]

binding.pry
