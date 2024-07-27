module Q8StringToInteger
  def my_atoi(s)
    chars = s.strip.chars
    max_i = 2.pow(31) - 1
    min_i = -2.pow(31)

    # Figure out the sign
    sign = 1
    if chars[0] == '-'
      sign = -1
      chars[0] = 0
    elsif chars[0] == '+'
      chars[0] = 0
    end

    # Clear leading zeros
    i = 0
    while chars[i] == 0 do
      i += 1
    end

    val = 0
    chars[i..].each do |c|
      digit = letter_to_digit(c)
      if digit == -1
        break
      end
      val = val * 10 + digit
    end

    res = sign * val

    if res < min_i
      return min_i
    end

    if res > max_i
      return max_i
    end

    res
  end

  def letter_to_digit(l)
    case l
    when '0' then 0
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9
    else
      -1
    end
  end
end
