require_relative "./test_helper"

class Q1071GreatestCommonDivisorOfStringsTest < Minitest::Test
  include Q1071GreatestCommonDivisorOfStrings

  def test_case_1
    str1 = "ABCABC"
    str2 = "ABC"
    assert_equal "ABC", gcd_of_strings(str1, str2)
  end

  def test_case_2
    str1 = "ABABAB"
    str2 = "ABAB"
    assert_equal "AB", gcd_of_strings(str1, str2)
  end

  def test_case_3
    str1 = "LEET"
    str2 = "CODE"
    assert_equal "", gcd_of_strings(str1, str2)
  end
end
