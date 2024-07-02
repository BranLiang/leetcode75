require_relative "./test_helper"

class Q208ImplementTrieTest < Minitest::Test
  include Q208ImplementTrie

  def test_case
    trie = Trie.new
    trie.insert("apple")
    assert_equal true, trie.search("apple")
    assert_equal false, trie.search("app")
    assert_equal true, trie.starts_with("app")
    trie.insert("app")
    assert_equal true, trie.search("app")
  end
end
