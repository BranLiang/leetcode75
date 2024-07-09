module Q307RangeSumQueryMutable
  class SegmentTree

    attr_accessor :sum, :left, :right, :l, :r
    def initialize(total, l, r)
      @sum = total
      @left = nil
      @right = nil
      @l = l
      @r = r
    end

    def self.build(nums, l, r)
      if l == r
        return new(nums[l], l, r)
      end

      m = (l + r) / 2
      root = new(0, l, r)
      root.left = build(nums, l, m)
      root.right = build(nums, m + 1, r)
      root.sum = root.left.sum + root.right.sum
      root
    end

    def update(index, val)
      if l == r
        self.sum = val
        return self
      end

      m = (l + r) / 2
      if index > m
        right.update(index, val)
      else
        left.update(index, val)
      end
      self.sum = left.sum + right.sum
      self
    end

    def sum_range(l, r)
      if l == self.l && r == self.r
        return sum
      end

      m = (self.l + self.r) / 2
      if l > m
        right.sum_range(l, r)
      elsif r <= m
        left.sum_range(l, r)
      else
        left.sum_range(l, m) + right.sum_range(m + 1, r)
      end
    end
  end

  class NumArray
    def initialize(nums)
      @tree = SegmentTree.build(nums, 0, nums.size - 1)
    end

    def update(index, val)
      @tree.update(index, val)
    end

    def sum_range(l, r)
      @tree.sum_range(l, r)
    end
  end
end
