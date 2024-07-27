module Q12IntegerToRoman
  def int_to_roman(num)
    if num == 0
      return ""
    end

    if num == 1
      return "I"
    end

    if num in (2..3)
      return "I" + int_to_roman(num - 1)
    end

    if num == 4
      return "IV"
    end

    if num == 5
      return "V"
    end

    if num in (6..8)
      return "V" + int_to_roman(num - 5)
    end

    if num == 9
      return "IX"
    end

    if num == 10
      return "X"
    end

    if num in (11..39)
      return "X" + int_to_roman(num - 10)
    end

    if num in (40..49)
      return "XL" + int_to_roman(num - 40)
    end

    if num == 50
      return "L"
    end

    if num in (51..89)
      return "L" + int_to_roman(num - 50)
    end

    if num in (90..99)
      return "XC" + int_to_roman(num - 90)
    end

    if num == 100
      return "C"
    end

    if num in (101..399)
      return "C" + int_to_roman(num - 100)
    end

    if num in (400..499)
      return "CD" + int_to_roman(num - 400)
    end

    if num == 500
      return "D"
    end

    if num in (501..899)
      return "D" + int_to_roman(num - 500)
    end

    if num in (900..999)
      return "CM" + int_to_roman(num - 900)
    end

    if num == 1000
      return "M"
    end

    if num in (1000..3999)
      return "M" + int_to_roman(num - 1000)
    end

    raise "Integer not supported"
  end
end
