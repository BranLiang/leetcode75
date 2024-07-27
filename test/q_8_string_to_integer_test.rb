require_relative "./test_helper"

class Q8StringToIntegerTest < Minitest::Test
  include Q8StringToInteger

  def test_it_works
    s = "42"
    assert_equal 42, my_atoi(s)

    s = "-042"
    assert_equal -42, my_atoi(s)

    s = "1337c0d3"
    assert_equal 1337, my_atoi(s)

    s = "0-1"
    assert_equal 0, my_atoi(s)

    s = "words and 987"
    assert_equal 0, my_atoi(s)
  end
end
