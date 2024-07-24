require_relative "./test_helper"

class Q502IpoTest < Minitest::Test
  include Q502Ipo

  def test_it_works
    k = 2
    w = 0
    profits = [1,2,3]
    capital = [0,1,1]
    assert_equal 4, find_maximized_capital(k, w, profits, capital)

    k = 3
    w = 0
    profits = [1,2,3]
    capital = [0,1,2]
    assert_equal 6, find_maximized_capital(k, w, profits, capital)
  end
end
