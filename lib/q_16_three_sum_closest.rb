module Q16ThreeSumClosest
  def three_sum_closest(nums, target)
    nums = nums.sort
    r = nums.length - 1
    res = Float::INFINITY
    nums.each_with_index do |v, i|
      diff = two_sum_closest(nums, target - v, i, r)
      if diff.abs < res.abs
        res = diff
      end
    end

    target + res
  end

  def two_sum_closest(nums, target, i, r)
    l = i + 1
    diff = Float::INFINITY

    while l < r
      sum = nums[l] + nums[r]

      if (sum - target).abs < diff.abs
        diff = sum - target
      end

      if sum > target
        r -= 1
      elsif sum < target
        l += 1
      else
        return 0
      end
    end

    diff
  end
end
