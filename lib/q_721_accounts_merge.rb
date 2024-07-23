module Q721AccountsMerge
  class UnionFind
    def initialize(accounts)
      @par = {}
      @rank = {}
      @owner = {}

      accounts.each do |account|
        name = account[0]
        account[1..].each do |email|
          @par[email] = email
          @rank[email] = 0
          @owner[email] = name
        end
      end
    end

    def find(email)
      p = @par[email]
      while p != @par[p] do
        @par[p] = @par[@par[p]]
        p = @par[p]
      end
      p
    end

    def find_owner(email)
      @owner[email]
    end

    def union(email1, email2)
      p1, p2 = find(email1), find(email2)
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

  def accounts_merge(accounts)
    uf = UnionFind.new(accounts)

    accounts.each do |account|
      first = account[1]
      account[2..].each do |other|
        uf.union(first, other)
      end
    end

    result = {}
    accounts.each do |account|
      account[1..].each do |email|
        p = uf.find(email)
        result[p] ||= Set.new
        result[p] << email
      end
    end

    result.map do |k, v|
      [uf.find_owner(k)] + v.to_a.sort
    end
  end
end
