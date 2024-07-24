require "rb_heap"

module Q502Ipo
  Project = Data.define(:profit, :capital) do
    def <=>(other)
      capital <=> other.capital
    end

    include Comparable
  end

  def find_maximized_capital(k, w, profits, capital)
    max_profit_heap = Heap.new(:>)
    min_capital_heap = Heap.new(:<)

    profits.zip(capital).each do |v|
      profit, capital = v

      if capital <= w
        max_profit_heap << profit
      end

      if capital > w
        min_capital_heap << Project.new(profit, capital)
      end
    end

    k.times do
      profit = max_profit_heap.pop
      return w unless profit

      w += profit

      project = min_capital_heap.peak

      while project && project.capital <= w
        # Move the profit to the max heap
        min_capital_heap.pop
        max_profit_heap << project.profit

        project = min_capital_heap.peak
      end
    end

    w
  end
end
