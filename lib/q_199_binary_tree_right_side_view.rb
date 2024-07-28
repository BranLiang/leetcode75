module Q199BinaryTreeRightSideView
  def right_side_view(root)
    queue = []
    seen = Set.new
    res = []

    queue << [root, 1]
    while queue.any?
      node, level = queue.shift

      next unless node

      if !seen.include? level
        res << node.val
        seen << level
      end

      queue << [node.right, level + 1] if node.right
      queue << [node.left, level + 1] if node.left
    end

    res
  end
end
