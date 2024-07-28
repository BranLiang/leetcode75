require_relative "./test_helper"

class Q199BinaryTreeRightSideViewTest < Minitest::Test
  include Q199BinaryTreeRightSideView

  def test_it_works
    root = BinaryTree.new([1,2,3,nil,5,nil,4]).root
    assert_equal [1, 3, 4], right_side_view(root)

    root = BinaryTree.new([1,nil,3]).root
    assert_equal [1, 3], right_side_view(root)

    root = BinaryTree.new([]).root
    assert_equal [], right_side_view(root)
  end
end
