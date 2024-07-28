module Q700SearchInABinarySearchTree
  class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
  end

  def search_bst(root, val)
    if root.nil?
      return
    end

    if val == root.val
      return root
    end

    if val > root.val
      search_bst(root.right, val)
    else
      search_bst(root.left, val)
    end
  end
end
