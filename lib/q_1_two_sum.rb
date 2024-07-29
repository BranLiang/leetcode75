# https://leetcode.com/problems/two-sum

module Q1TwoSum
  def two_sum(sums, target)
    values = {}
    sums.each_with_index do |v, i|
      complement = target - v
      if values.has_key? complement
        return [values[complement], i]
      end

      values[v] = i
    end

    nil
  end
end
