module Q13RomanToInteger
  def roman_to_int(s)
    sum = 0
    p = 0

    subtractions = {
      "IV" => 4,
      "IX" => 9,
      "XL" => 40,
      "XC" => 90,
      "CD" => 400,
      "CM" => 900
    }

    common = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
    }

    while p < s.size
      if v = subtractions[s[p..(p + 1)]]
        sum += v
        p += 2
        next
      end

      sum += common[s[p]]
      p += 1
    end

    sum
  end
end
