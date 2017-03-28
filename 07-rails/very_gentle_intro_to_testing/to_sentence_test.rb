require "minitest/autorun"
require "minitest/reporters"
require_relative "to_sentence"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class ToSentence < MiniTest::Test

  def test_empty_array_returns_empty_string
    assert_equal '', to_sentence([])
  end

  def test_single_element_first_letter_is_capital
    assert_equal 'Kevin', to_sentence(['kevin'])
  end

  def test_2_elements_joins_it_with_and
    assert_equal 'Apple and orange', to_sentence(['apple','orange'])
  end

  def test_3_elements_join_it_with_comma_and_and
    assert_equal 'Apple, orange and banana', to_sentence(['apple','orange','banana'])
  end
end
