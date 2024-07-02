module Q283MoveZeros
  def move_zeros(nums)
    cnt = nums.count {|n| n == 0 }
    nums.delete(0)
    cnt.times do
      nums.push(0)
    end
  end
end
