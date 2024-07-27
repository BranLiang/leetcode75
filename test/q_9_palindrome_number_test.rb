require_relative "./test_helper"

class Q9PalindromeNumberTest < Minitest::Test
  include Q9PalindromeNumber

  def test_it_works
    x = 121
    assert_equal true, is_palindrome(x)

    x = -121
    assert_equal false, is_palindrome(x)

    x = 10
    assert_equal false, is_palindrome(x)
  end
end
