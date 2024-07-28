module Q105ConstructBinaryTreeFromTraversal
  class Counter
    attr_accessor :val
    def initialize
      @val = 0
    end
  end

  def build_tree(preorder, inorder)
    counter = Counter.new
    helper(preorder, inorder, counter)
  end

  def helper(preorder, inorder, counter)
    if inorder.empty?
      return
    end

    root = TreeNode.new(preorder[counter.val])
    i = inorder.index(root.val)

    counter.val += 1
    root.left = helper(preorder, inorder[0...i], counter)
    root.right = helper(preorder, inorder[i + 1..], counter)

    root
  end
end
