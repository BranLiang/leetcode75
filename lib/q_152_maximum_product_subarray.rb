module Q152MaximumProductSubarray
  def max_product(nums)
    max_so_far = nums[0]
    min_so_far = nums[0]
    result = max_so_far

    nums[1..-1].each do |n|
      temp_max = [n, n * max_so_far, n * min_so_far].max
      min_so_far = [n, n * min_so_far, n * max_so_far].min
      max_so_far = temp_max

      result = [max_so_far, result].max
    end

    result
  end
end
