module Q11ContainerWithMostWater
  def max_area(height)
    max_amount = 0
    l = 0
    r = height.size - 1

    while l < r
      amount = (r - l) * ([height[l], height[r]].min)
      max_amount = [max_amount, amount].max

      if height[l] < height[r]
        l += 1
      else
        r -= 1
      end
    end

    max_amount
  end
end
