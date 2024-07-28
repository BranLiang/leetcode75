class BinaryTree
  attr_reader :root
  def initialize(arr)
    @arr = arr
    @root = build_tree(0)
  end

  private

  def build_tree(index)
    puts index
    return nil if index >= @arr.length || @arr[index].nil?

    node = TreeNode.new(@arr[index])
    node.left = build_tree(2 * index + 1)
    node.right = build_tree(2 * index + 2)
    node
  end
end
