require "minitest/autorun"
require "minitest/reporters"
require_relative "leap_year"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class LeapYear < MiniTest::Test

  def test_leap_year_is_not_that_common
    assert_equal false, leap_year?(2017)
  end

  def test_every_4_year_is_leap_year
    assert_equal true, leap_year?(2016)
  end

  def test_every_century_is_not_a_leap_year
    assert_equal false, leap_year?(1900)
  end

  def test_every_400_years_is_a_leap_year_again
    assert_equal true, leap_year?(1600)
  end
end
