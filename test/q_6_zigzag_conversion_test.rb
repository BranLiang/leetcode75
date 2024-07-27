require_relative "./test_helper"

class Q6ZigzagConversionTest < Minitest::Test
  include Q6ZigzagConversion

  def test_it_works
    s = "PAYPALISHIRING"
    num_rows = 3
    assert_equal "PAHNAPLSIIGYIR", convert(s, num_rows)

    s = "PAYPALISHIRING"
    num_rows = 4
    assert_equal "PINALSIGYAHRPI", convert(s, num_rows)

    s = "A"
    num_rows = 1
    assert_equal "A", convert(s, num_rows)
  end
end
