module Q259ThreeSumSmaller
  def three_sum_smaller(nums, target)
    nums = nums.sort
    counter = 0
    r = nums.length - 1
    nums.each_with_index do |n, i|
      counter += two_sum_smaller(nums, target - n, i, r)
    end

    counter
  end

  def two_sum_smaller(nums, target, i, r)
    l = i + 1
    counter = 0
    while l < r
      if nums[l] + nums[r] >= target
        r -= 1
      else
        counter = counter + r - l
        l += 1
      end
    end
    counter
  end
end
