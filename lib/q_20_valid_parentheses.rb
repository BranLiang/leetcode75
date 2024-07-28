module Q20ValidParentheses
  def is_valid(s)
    mapping = {
      "}" => "{",
      ")" => "(",
      "]" => "["
    }

    stack = []
    s.chars.each do |c|
      case c
      when "(", "[", "{"
        stack << c
      else
        if stack.pop != mapping[c]
          return false
        end
      end
    end
    stack.empty?
  end
end
