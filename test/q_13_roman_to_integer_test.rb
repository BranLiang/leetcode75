require_relative "./test_helper"

class Q13RomanToIntegerTest < Minitest::Test
  include Q13RomanToInteger

  def test_it_works
    s = "III"
    assert_equal 3, roman_to_int(s)

    s = "LVIII"
    assert_equal 58, roman_to_int(s)

    s = "MCMXCIV"
    assert_equal 1994, roman_to_int(s)
  end
end
