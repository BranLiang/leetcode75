module Q15ThreeSum

  def three_sum(nums)
    triplets = []
    nums = nums.sort
    nums.each_with_index do |v, i|
      if i == 0 or nums[i - 1] != v
        two_sum(nums, 0 - v, i, triplets)
      end
    end

    triplets
  end

  def two_sum(nums, target, i, triplets)
    l = i + 1
    r = nums.length - 1
    while l < r
      sum = nums[l] + nums[r]
      if sum < target
        l += 1
      elsif sum > target
        r -= 1
      else
        triplets << [
          nums[i],
          nums[l],
          nums[r]
        ]
        l += 1
        r -= 1
        while nums[l] == nums[l-1]
          l += 1
        end
      end
    end
  end
end
