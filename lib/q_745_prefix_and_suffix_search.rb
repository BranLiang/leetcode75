module Q745PrefixAndSuffixSearch
  class TrieTreeNode
    attr_accessor :children, :word, :index
    def initialize
      @children = {}
      @word = false
      @index = -1
    end
  end

  class TrieTree
    def initialize
      @root = TrieTreeNode.new
    end

    def insert(word, index)
      current = @root
      word.chars.each do |c|
        unless current.children.key?(c)
          current.children[c] = TrieTreeNode.new
        end
        current = current.children[c]
        current.index = index
      end
      current.word = true
    end

    def start_with(prefix)
      current = @root
      prefix.chars.each do |c|
        if !current.children.has_key?(c)
          return -1
        end
        current = current.children[c]
      end

      current.index
    end
  end

  class WordFilter
    def initialize(words)
      @tree = TrieTree.new

      words.each_with_index do |word, i|
        word.length.times do |n|
          w = word.slice(n..) + "<" + word
          @tree.insert(w, i)
        end
      end
    end

    def f(pref, suff)
      @tree.start_with("#{suff}<#{pref}")
    end
  end
end
