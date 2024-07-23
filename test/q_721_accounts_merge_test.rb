require_relative "./test_helper"

class Q721AccountsMergeTest < Minitest::Test
  include Q721AccountsMerge

  def test_it_works
    accounts = [
      ["John","johnsmith@mail.com","john_newyork@mail.com"],
      ["John","johnsmith@mail.com","john00@mail.com"],
      ["Mary","mary@mail.com"],
      ["John","johnnybravo@mail.com"]
    ]
    expected = [
      ['Mary', 'mary@mail.com'],
      ['John', 'johnnybravo@mail.com'],
      ['John', 'john00@mail.com', 'john_newyork@mail.com', 'johnsmith@mail.com']
    ]
    merged = accounts_merge(accounts)
    assert_equal expected.size, merged.size
    expected.each do |a|
      merged.include?(a)
    end

    accounts = [
      ["Gabe","Gabe0@m.co","Gabe3@m.co","Gabe1@m.co"],
      ["Kevin","Kevin3@m.co","Kevin5@m.co","Kevin0@m.co"],
      ["Ethan","Ethan5@m.co","Ethan4@m.co","Ethan0@m.co"],
      ["Hanzo","Hanzo3@m.co","Hanzo1@m.co","Hanzo0@m.co"],
      ["Fern","Fern5@m.co","Fern1@m.co","Fern0@m.co"]
    ]
    expected = [
      ["Ethan","Ethan0@m.co","Ethan4@m.co","Ethan5@m.co"],
      ["Gabe","Gabe0@m.co","Gabe1@m.co","Gabe3@m.co"],
      ["Hanzo","Hanzo0@m.co","Hanzo1@m.co","Hanzo3@m.co"],
      ["Kevin","Kevin0@m.co","Kevin3@m.co","Kevin5@m.co"],
      ["Fern","Fern0@m.co","Fern1@m.co","Fern5@m.co"]
    ]
    merged = accounts_merge(accounts)
    assert_equal expected.size, merged.size
    expected.each do |a|
      merged.include?(a)
    end
  end
end
