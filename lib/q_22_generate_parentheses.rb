module Q22GenerateParentheses
  def generate_parenthesis(n)
    res = []

    if n == 0
      return [""]
    end

    n.times do |left_count|
      generate_parenthesis(left_count).each do |left_string|
        generate_parenthesis(n - 1 - left_count).each do |right_string|
          res << "(" + left_string + ")" + right_string
        end
      end
    end

    res
  end
end
