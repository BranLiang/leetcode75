require_relative "./test_helper"
require "debug"

class Q110BalancedBinaryTreeTest < Minitest::Test
  include Q110BalancedBinaryTree

  def test_it_works
    root = BinaryTree.new([1,2,2,3,nil,nil,3,4,nil,nil,4]).root

    assert_equal false, is_balanced(root)
  end
end
