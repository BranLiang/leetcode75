module QMergeSort
  def sort(arr)
    merge_sort(arr, 0, arr.length - 1)
  end

  def merge_sort(arr, s, e)
    if e - s + 1 <= 1
      return arr
    end

    m = (s + e) / 2
    merge_sort(arr, s, m)
    merge_sort(arr, m + 1, e)

    merge(arr, s, m, e)
  end

  def merge(arr, s, m, e)
    i = s
    j = m + 1
    temp = []
    while i <= m && j <= e
      if arr[i] <= arr[j]
        temp << arr[i]
        i += 1
      else
        temp << arr[j]
        j += 1
      end
    end

    while j <= e
      temp << arr[j]
      j += 1
    end

    while i <= m
      temp << arr[i]
      i += 1
    end

    arr[s..e] = temp[0..]
    arr
  end
end
