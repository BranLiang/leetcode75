module Q9PalindromeNumber
  def is_palindrome(x)
    return false if x < 0

    digits = []
    while x > 0
      d = x % 10
      digits << d
      x /= 10
    end

    l = 0
    r = digits.size - 1
    while l < r
      if digits[l] != digits[r]
        return false
      end
      l += 1
      r -= 1
    end

    true
  end
end
