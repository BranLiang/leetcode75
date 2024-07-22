module Q560SubarraySumEqualsK
  def subarray_sum(nums, k)
    prefix_sum = 0
    prefix_hash = Hash.new { |h, key| h[key] = 0 }
    prefix_hash[0] = 1
    count = 0

    nums.each do |num|
      prefix_sum += num
      count += prefix_hash[prefix_sum - k]
      prefix_hash[prefix_sum] += 1
    end

    count
  end
end
