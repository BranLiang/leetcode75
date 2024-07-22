module Q80RemoveDuplicatesFromSortedArray
  def remove_duplicates(nums)
    l = nil
    already_found = false
    totoal_size = nums.size
    deleted_count = 0

    nums.delete_if do |r|
      if l == r
        if already_found
          deleted_count += 1
          true
        else
          already_found = true
          false
        end
      else
        l = r
        already_found = false
        false
      end
    end

    totoal_size - deleted_count
  end
end
