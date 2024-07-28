module Q94BinaryTreeInorderTraversal
  def inorder_traversal(root)
    res = []
    dfs(root, res)
    res
  end

  def dfs(root, res)
    if root.nil?
      return
    end

    dfs(root.left, res)
    res << root.val
    dfs(root.right, res)
  end
end
