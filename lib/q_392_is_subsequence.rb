module Q392IsSubsequence
  def is_subsequence(s, t)
    current = t
    result = true

    s.chars.each do |c|
      i = current.index(c)
      if i == nil
        result = false
        break
      else
        current = current[(i + 1)..-1]
      end
    end

    result
  end
end
