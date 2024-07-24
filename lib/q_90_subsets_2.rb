module Q90Subsets2
  def subsets_with_dup(nums)
    nums = nums.sort

    subsets = []
    current_subsets = []
    helper(0, nums, current_subsets, subsets)

    subsets
  end

  def helper(i, nums, current_subsets, subsets)
    if i >= nums.length
      subsets.append(current_subsets.dup)
      return
    end

    current_subsets.append(nums[i])
    helper(i+1, nums, current_subsets, subsets)
    current_subsets.pop()

    while i + 1 < nums.size && nums[i] == nums[i + 1] do
      i += 1
    end
    helper(i + 1, nums, current_subsets, subsets)
  end
end
