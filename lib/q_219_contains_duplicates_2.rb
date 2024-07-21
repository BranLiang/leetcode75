module Q219ContainsDuplicates2
  def contains_nearby_duplicate(nums, k)
    window = Set.new

    l = 0
    window.add(nums[0])

    nums[1..-1].each_with_index do |r, i|
      if i - l + 1 > k
        window.delete(nums[l])
        l += 1
      end

      if window.include?(r)
        return true
      end

      window.add(r)
    end

    false
  end
end
