module QInsertionSort
  def sort(list)
    (1..list.length - 1).each do |i|
      j = i - 1
      while j >= 0 && list[j] > list[j + 1]
        list[j], list[j + 1] = list[j + 1], list[j]
        j -= 1
      end
    end
    list
  end
end
