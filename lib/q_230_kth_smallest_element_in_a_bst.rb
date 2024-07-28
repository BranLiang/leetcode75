module Q230KthSmallestElementInABst
  def kth_smallest(root, k)
    res = []
    dfs(root, res, k)
  end

  def dfs(root, res, k)
    if res.length >= k
      return res[k-1]
    end

    if root.nil?
      return
    end

    dfs(root.left, res, k)
    res << root.val
    dfs(root.right, res, k)
  end
end
