module Q3LongestSubstringWihtoutRepeatingCharacters
  def length_of_longest_substring(s)
    max_length = 0
    bucket = Hash.new(0)
    chars = s.chars
    l_index = 0

    chars.each do |r|
      bucket[r] += 1

      while bucket[r] > 1
        l = chars[l_index]
        bucket[l] -= 1
        l_index += 1
      end

      max_length = [max_length, bucket.values.sum].max
    end

    max_length
  end
end
