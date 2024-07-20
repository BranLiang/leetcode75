module Q53MaximumSubarray
  def max_sub_array(nums)
    max_sum = nums[0]
    curr_sum = 0

    nums.each do |n|
      curr_sum = [curr_sum, 0].max + n
      max_sum = [curr_sum, max_sum].max
    end

    max_sum
  end
end
