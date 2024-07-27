require_relative "./test_helper"

class Q12IntegerToRomanTest < Minitest::Test
  include Q12IntegerToRoman

  def test_it_works
    num = 3749
    assert_equal "MMMDCCXLIX", int_to_roman(num)

    num = 58
    assert_equal "LVIII", int_to_roman(num)

    num = 1994
    assert_equal "MCMXCIV", int_to_roman(num)
  end
end
