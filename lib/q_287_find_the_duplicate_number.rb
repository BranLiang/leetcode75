module Q287FindTheDuplicateNumber
  def find_duplicate(nums)
    s = nums[0]
    f = nums[0]

    loop do
      s = nums[nums[s]]
      f = nums[nums[nums[f]]]
      break if s == f
    end

    s2 = nums[0]
    while s2 != s do
      s2 = nums[nums[s2]]
      s = nums[nums[s]]
    end

    return s
  end
end
