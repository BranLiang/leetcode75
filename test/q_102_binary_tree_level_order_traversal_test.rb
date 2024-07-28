require_relative "./test_helper"

class Q102BinaryTreeLevelOrderTraversalTest < Minitest::Test
  include Q102BinaryTreeLevelOrderTraversal

  def test_it_works
    root = BinaryTree.new([3,9,20,nil,nil,15,7]).root
    assert_equal [[3],[9,20],[15,7]], level_order(root)
  end
end
