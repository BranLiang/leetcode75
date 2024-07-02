module Q208ImplementTrie
  class TrieNode

    attr_accessor :children, :is_word
    def initialize
      @children = {}
      @is_word = false
    end
  end

  class Trie

    attr_accessor :root
    def initialize()
      @root = TrieNode.new
    end

    def insert(word)
      curr = root
      word.chars.each do |c|
        curr.children[c] ||= TrieNode.new
        curr = curr.children[c]
      end
      curr.is_word = true
    end

    def search(word)
      curr = root
      word.chars.each do |c|
        return false unless curr.children[c]
        curr = curr.children[c]
      end
      curr.is_word
    end

    def starts_with(prefix)
      curr = root
      prefix.chars.each do |c|
        return false unless curr.children[c]
        curr = curr.children[c]
      end
      true
    end
  end
end
