module Q102BinaryTreeLevelOrderTraversal
  def level_order(root)
    return [] if root.nil?

    queue = []
    values = {}

    queue << [root, 1]
    while queue.any?
      node, level = queue.shift
      values[level] ||= []
      values[level] << node.val

      if node.left
        queue << [node.left, level + 1]
      end

      if node.right
        queue << [node.right, level + 1]
      end
    end

    res = []
    values.sort.each do |_, v|
      res << v
    end
    res
  end
end
