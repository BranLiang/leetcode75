module Q110BalancedBinaryTree
  def is_balanced(root)
    ans, _ = balanced_and_height(root)
    return ans
  end

  def balanced_and_height(root)
    if root.nil?
      return [true, 0]
    end

    lb, lh = balanced_and_height(root.left)
    rb, rh = balanced_and_height(root.right)

    balanced = ((lh - rh).abs <= 1) && lb && rb
    height = 1 + [lh, rh].max

    puts "root #{root.val} #{balanced} l: #{lb} r: #{rb}"

    [
      balanced,
      height
    ]
  end
end
