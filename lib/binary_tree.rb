class BinaryTree
  def initialize(arr)
    @arr = arr
    @root = build_tree(0)
  end

  def root
    @root
  end

  private

  def build_tree(index)
    return nil if index >= @arr.length || @arr[index].nil?

    node = TreeNode.new(@arr[index])
    node.left = build_tree(2 * index + 1)
    node.right = build_tree(2 * index + 2)
    node
  end
end
