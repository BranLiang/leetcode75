# https://leetcode.com/problems/zigzag-conversion

module Q6ZigzagConversion
  def convert(s, num_rows)
    row = 0
    col = 0
    down = true # flag
    bucket = {}
    s.chars.each do |c|
      bucket[row] ||= {}
      bucket[row][col] = c
      if down
        row += 1
        if row == num_rows - 1
          down = false
        end
      else
        row -= 1
        col += 1
        if row == 0
          down = true
        end
      end
    end

    result = []
    bucket.sort.each do |_, row|
      row.sort.each do |_, v|
        result << v
      end
    end
    result.join
  end
end
