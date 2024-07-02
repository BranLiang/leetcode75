module Q1448CountGoodNodesInBinaryTree
  def good_nodes(root)
    @cnt = 1
    if left = root.left
      dfs(left, root.val)
    end
    if right = root.right
      dfs(right, root.val)
    end
    @cnt
  end

  def dfs(node, max)
    if node.val >= max
      @cnt += 1
    end

    if left = node.left
      dfs(left, [node.val, max].max)
    end

    if right = node.right
      dfs(right, [node.val, max].max)
    end
  end
end
