module Q269AlienDictionary
  class CycleDetected < StandardError; end
  class FoundShorterWordAfter < StandardError; end

  def alien_order(words)
    adj = build_adj(words)
    letters = build_letters(words)
    top_sort = []
    path = []
    visited = Set.new

    # puts "adj: #{adj.inspect}"
    # puts "letters: #{letters.inspect}"

    letters.each do |l|
      dfs(l, adj, visited, path, top_sort)
    end

    # puts "top_sorted: #{top_sort.inspect}"

    top_sort.reverse.join()
  rescue CycleDetected, FoundShorterWordAfter
    ""
  end

  def dfs(src, adj, visited, path, top_sort)
    # puts "path: #{path.inspect}, src: #{src}"
    if path.include?(src)
      # puts "Cycle detected! path: #{path.inspect}, src: #{src}"
      raise CycleDetected, "#{src} has already been in the path"
    end
    path << src

    if visited.include?(src)
      return
    end
    visited << src

    # puts "adj: #{adj.inspect}, src: #{src}"
    if adj[src]
      adj[src].each do |neighbour|
        dfs(neighbour, adj, visited, path, top_sort)
      end
    end

    path.pop
    top_sort << src
  end

  def build_letters(words)
    letters = Set.new
    words.each do |w|
      w.chars.each { letters << _1 }
    end
    letters
  end

  def build_adj(words)
    adj = {}
    words.each_cons(2) do |w1, w2|
      chars_group = if w1.size >= w2.size
        w1.chars.zip(w2.chars)
      else
        w2.chars.zip(w1.chars).map(&:reverse)
      end
      # puts "chars group: #{chars_group}"

      catch :found_mismatch do
        chars_group.each do |c1, c2|
          if c1.nil?
            throw :found_mismatch
          end
          if c2 && c1 != c2
            adj[c1] ||= Set.new
            adj[c1] << c2
            throw :found_mismatch
          end
          if c2.nil?
            raise FoundShorterWordAfter
          end

        end
      end
    end
    adj
  end
end
