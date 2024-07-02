require_relative "./test_helper"

class Q1448CountGoodNodesInBinaryTreeTest < Minitest::Test
  include Q1448CountGoodNodesInBinaryTree

  def test_case_1
    root = BinaryTree.new([3,1,4,3,nil,1,5]).root
    assert_equal 4, good_nodes(root)
  end

  def test_case_2
    root = BinaryTree.new([3,3,nil,4,2]).root
    assert_equal 3, good_nodes(root)
  end

  def test_case_3
    root = BinaryTree.new([1]).root
    assert_equal 1, good_nodes(root)
  end
end
