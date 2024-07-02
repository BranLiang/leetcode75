module Q334IncreasingTripletSubSequence
  def increasing_triplet(nums)
    first_n = Float::INFINITY
    second_n = Float::INFINITY

    nums.each do |n|
      if n < first_n
        first_n = n
      elsif n < second_n && n > first_n
        second_n = n
      else
        return true if n > first_n && n > second_n
      end
    end

    false
  end
end
