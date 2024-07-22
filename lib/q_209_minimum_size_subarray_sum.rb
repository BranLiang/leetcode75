module Q209MinimumSizeSubarraySum
  def min_sub_array_len(target, nums)
    sub_array = []
    min_len = Float::INFINITY
    current_sum = 0
    current_len = 0

    nums.each do |n|
      sub_array.push(n)
      current_sum += n
      current_len += 1

      if current_sum >= target
        while current_sum >= target
          current_sum -= sub_array.shift
          current_len -= 1
        end

        min_len = [min_len, current_len + 1].min
      end
    end

    min_len == Float::INFINITY ? 0 : min_len
  end
end
