require_relative "./test_helper"

class Q3LongestSubstringWihtoutRepeatingCharactersTest < Minitest::Test
  include Q3LongestSubstringWihtoutRepeatingCharacters

  def test_it_works
    s = "abcabcbb"
    assert_equal 3, length_of_longest_substring(s)

    s = "bbbbb"
    assert_equal 1, length_of_longest_substring(s)

    s = "pwwkew"
    assert_equal 3, length_of_longest_substring(s)

    s = " "
    assert_equal 1, length_of_longest_substring(s)

    s = "dvdf"
    assert_equal 3, length_of_longest_substring(s)
  end
end
