module QLastStoneWeight2
  Item = Data.define(:i, :total)

  def last_stone_weight_ii(stones)
    @stones = stones
    @stone_sum = stones.sum
    @target = @stone_sum.ceildiv(2)
    @dp = {}

    dfs(0, 0)
  end

  def dfs(i, total)
    if total >= @target or i == @stones.size
      return (total - (@stone_sum - total)).abs
    end

    item = Item[i, total]
    if @dp[item]
      return @dp[item]
    end

    @dp[item] = [
      dfs(i + 1, total),
      dfs(i + 1, total + @stones[i])
  ].min
  end
end
