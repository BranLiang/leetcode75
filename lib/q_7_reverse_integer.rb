# https://leetcode.com/problems/reverse-integer

module Q7ReverseInteger
  def reverse(x)
    sign = x >= 0 ? 1 : -1
    x = x.abs

    ans = 0
    while x > 0
      digit = x % 10
      ans = ans * 10 + digit
      x /= 10
    end

    res = ans * sign

    if ans > (2.pow(31) - 1) or ans < (-2).pow(31)
      return 0
    end

    res
  end
end
