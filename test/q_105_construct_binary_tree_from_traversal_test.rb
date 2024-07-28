require_relative "./test_helper"
require "debug"

class Q105ConstructBinaryTreeFromTraversalTest < Minitest::Test
  include Q105ConstructBinaryTreeFromTraversal

  def test_it_works
    # preorder = [3,9,20,15,7]
    # inorder = [9,3,15,20,7]
    # root = build_tree(preorder, inorder)

    preorder = [3,1,2,4]
    inorder = [1,2,3,4]
    root = build_tree(preorder, inorder)
    debugger
  end
end
