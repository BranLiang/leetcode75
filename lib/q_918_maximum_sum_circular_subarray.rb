module Q918MaximumSumCircularSubarray
  def max_subarray_sum_circular(nums)
    norm_max = max_sum(nums)
    if norm_max > 0
      [norm_max, nums.sum - min_sum(nums)].max
    else
      norm_max
    end
  end

  def max_sum(nums)
    max_sum = nums[0]
    current_max = nums[0]

    nums[1..-1].each do |n|
      current_max = [n, current_max + n].max
      max_sum = [max_sum, current_max].max
    end

    max_sum
  end

  def min_sum(nums)
    min_sum = nums[0]
    current_min = nums[0]

    nums[1..-1].each do |n|
      current_min = [n, current_min + n].min
      min_sum = [min_sum, current_min].min
    end

    min_sum
  end
end
