require_relative "./test_helper"

class Q20ValidParenthesesTest < Minitest::Test
  include Q20ValidParentheses

  def test_it_works
    # s = "()"
    # assert_equal true, is_valid(s)

    s = "()[]{}"
    assert_equal true, is_valid(s)
  end
end
