module Q112PathSum
  def has_path_sum(root, target_sum)
    return false if root.nil?
    backtrace(root, target_sum, [])
  end

  def backtrace(root, target_sum, path)
    path << root.val

    if node_without_children(root) && path.sum == target_sum
      return true
    end

    if node_without_children(root)
      path.pop
      return false
    end

    if root.left && backtrace(root.left, target_sum, path)
      return true
    end

    if root.right && backtrace(root.right, target_sum, path)
      return true
    end

    path.pop

    false
  end

  def node_without_children(node)
    node.left.nil? && node.right.nil?
  end
end
