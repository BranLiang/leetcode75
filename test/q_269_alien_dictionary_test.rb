require_relative "./test_helper"

class Q269AlienDictionaryTest < Minitest::Test
  include Q269AlienDictionary

  def test_it_works
    words = ["wrt", "wrf", "er", "ett", "rftt"]
    assert_equal "wertf", alien_order(words)

    words = ["z", "x"]
    assert_equal "zx", alien_order(words)

    words = ["z", "x", "z"]
    assert_equal "", alien_order(words)

    words = ["z", "z"]
    assert_equal "z", alien_order(words)

    words = ["ac","ab","zc","zb"]
    assert_equal "cbaz", alien_order(words)

    words = ["abc","ab"]
    assert_equal "", alien_order(words)

    words = ["wnlb"]
    assert_equal "blnw", alien_order(words)
  end
end
