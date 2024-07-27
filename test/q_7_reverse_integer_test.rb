require_relative "./test_helper"

class Q7ReverseIntegerTest < Minitest::Test
  include Q7ReverseInteger

  def test_it_works
    x = 123
    assert_equal 321, reverse(x)

    x = -123
    assert_equal(-321, reverse(x))

    x = 120
    assert_equal 21, reverse(x)
  end
end
