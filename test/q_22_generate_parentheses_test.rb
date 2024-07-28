require_relative "./test_helper"

class Q22GenerateParenthesesTest < Minitest::Test
  include Q22GenerateParentheses
  include CustomizedAssertions

  def test_it_works
    n = 3
    expected = ["((()))","(()())","(())()","()(())","()()()"]
    assert_array_equal expected, generate_parenthesis(n)

    n = 4
    expected = ["(((())))","((()()))","((())())","((()))()","(()(()))","(()()())","(()())()","(())(())","(())()()","()((()))","()(()())","()(())()","()()(())","()()()()"]
    assert_array_equal expected, generate_parenthesis(n)
  end
end
