module Q1343NumberOfSubArraysOfSizeK
  def num_of_subarrays(arr, k, threshold)
    window = []

    count = 0
    arr[0...k].each do |v|
      window.push(v)
    end
    sum = window.sum
    if sum >= threshold * k
      count += 1
    end

    arr[k..-1].each do |r|
      sum -= window.shift
      sum += r
      window.push(r)

      if sum >= threshold * k
        count += 1
      end
    end

    count
  end
end
