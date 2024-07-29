# https://leetcode.com/problems/longest-common-prefix

module Q14LongestCommonPrefix
  def longest_common_prefix(strs)
    first = strs[0]
    prefix = ""

    (0...strs[0].size).each do |i|
      strs.each do |str|
        if str[i] != first[i]
          return prefix
        end
      end
      prefix += first[i]
    end

    prefix
  end
end
