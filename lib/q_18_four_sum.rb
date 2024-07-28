module Q18FourSum
  def four_sum(nums, target)
    nums = nums.sort
    k_sum(nums, target, 4)
  end

  def k_sum(nums, target, k)
    res = []

    if nums.empty?
      return res
    end

    avg = target / k
    if avg < nums.first || avg > nums.last
      return res
    end

    if k == 2
      return two_sum(nums, target)
    end

    nums.each_with_index do |n, i|
      if i == 0 || n != nums[i - 1]
        k_sum(nums[i + 1..], target - n, k - 1).each do |subset|
          res << [n] + subset
        end
      end
    end

    res
  end

  def two_sum(nums, target)
    res = []
    l = 0
    r = nums.length - 1
    while l < r
      sum = nums[l] + nums[r]
      if sum == target
        res << [nums[l], nums[r]]
        l += 1
        r -= 1
        while nums[l] == nums[l - 1]
          l += 1
        end
      elsif sum < target
        l += 1
      else
        r -= 1
      end
    end
    res
  end
end
