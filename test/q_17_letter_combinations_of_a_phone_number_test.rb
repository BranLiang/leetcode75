require_relative "./test_helper"

class Q17LetterCombinationsOfAPhoneNumberTest < Minitest::Test
  include Q17LetterCombinationsOfAPhoneNumber
  include CustomizedAssertions

  def test_it_works
    digits = "23"
    expected = ["ad","ae","af","bd","be","bf","cd","ce","cf"]
    assert_array_equal expected, letter_combinations(digits)

    digits = ""
    assert_array_equal [], letter_combinations(digits)
  end
end
