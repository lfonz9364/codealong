def leap_year?(year)
  if year % 4 === 0
    if year % 100 === 0
      if year % 400 === 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

=begin
def test(expected, actual)
  if expected == actual
    puts 'all good'
  else
    puts 'no good'
  end
end

test false, leap_year?(2017)
test false, leap_year?(1900)
=end
