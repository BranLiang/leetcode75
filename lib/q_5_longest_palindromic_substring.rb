# https://leetcode.com/problems/longest-palindromic-substring

module Q5LongestPalindromicSubstring

  def longest_palindrome(s)
    size = s.length
    ans = [0, 0]
    dp = Array.new(size) {Array.new(size)}

    # Initialize the chart
    (0...size).each do |i|
      dp[i][i] = true
    end

    (0...(size - 1)).each do |i|
      if s[i] == s[i + 1]
        dp[i][i + 1] = true
        ans = [i, i + 1]
      end
    end

    # Find all other pairs, starting with small differences
    (2...size).each do |diff|
      (0...(size - diff)).each do |i|
        j = i + diff
        if s[i] == s[j] && dp[i + 1][j - 1]
          dp[i][j] = true
          ans = [i, j]
        end
      end
    end

    i, j = ans
    s[i..j]
  end
end
