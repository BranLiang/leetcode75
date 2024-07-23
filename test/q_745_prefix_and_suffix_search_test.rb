require_relative "./test_helper"

class Q745PrefixAndSuffixSearchTest < Minitest::Test
  include Q745PrefixAndSuffixSearch

  def test_it_works
    words = ["apple"]
    wf = WordFilter.new(words)
    assert_equal 0, wf.f("a", "e")

    words = ["abbba", "abba"]
    wf = WordFilter.new(words)
    assert_equal 1, wf.f("ab", "ba")
  end
end
