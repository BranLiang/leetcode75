module Q2336SmallestNumberInInfiniteSet
  class SmallestInfiniteSet
    def initialize()
      @origin = 1
      @queue = []
    end

    def pop_smallest()
      if @queue.any?
        @queue.shift
      else
        @origin.tap do
          @origin += 1
        end
      end
    end

    def add_back(num)
      if num < @origin
        @queue.push(num)
        @queue.uniq!
        @queue.sort!
      end
    end
  end
end
