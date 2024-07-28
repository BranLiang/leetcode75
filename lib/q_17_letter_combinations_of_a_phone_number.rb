module Q17LetterCombinationsOfAPhoneNumber
  def letter_combinations(digits)
    @mapping = {
      "2" => ["a", "b", "c"],
      "3" => ["d", "e", "f"],
      "4" => ["g", "h", "i"],
      "5" => ["j", "k", "l"],
      "6" => ["m", "n", "o"],
      "7" => ["p", "q", "r", "s"],
      "8" => ["t", "u", "v"],
      "9" => ["w", "x", "y", "z"]
    }

    combs = []
    backtrack(0, "", combs, digits)
    combs
  end

  def backtrack(i, curr_comb, combs, digits)
    if curr_comb.length == digits.length
      combs << curr_comb unless curr_comb.empty?
      return
    end

    if i >= digits.length
      return
    end

    @mapping[digits[i]].each do |l|
      backtrack(i + 1, curr_comb + l, combs, digits)
    end
  end
end
