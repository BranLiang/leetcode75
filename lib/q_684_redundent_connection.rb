module Q684RedundentConnection
  class UnionFind
    def initialize(n)
      @par = {}
      @rank = {}

      (1..n).each do |i|
        @par[i] = i
        @rank[i] = 0
      end
    end

    def find(n)
      p = @par[n]

      # Path compresion
      while p != @par[p]
        @par[p] = @par[@par[p]]
        p = @par[p]
      end
      p
    end

    def union(n1, n2)
      p1, p2 = find(n1), find(n2)
      if p1 == p2
        return false
      end

      if @rank[p1] > @rank[p2]
        @par[p2] = p1
      elsif @rank[p1] < @rank[p2]
        @par[p1] = p2
      else
        @par[p1] = p2
        @rank[p2] += 1
      end

      true
    end
  end

  def find_redundent_connection(edges)
    forest = UnionFind.new(edges.size)
    redundent = []

    edges.each do |edge|
      unless forest.union(edge[0], edge[1])
        redundent.push(edge)
      end
    end

    redundent.last
  end
end
