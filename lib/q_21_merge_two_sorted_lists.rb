module Q21MergeTwoSortedLists
  def merge_two_lists(list1, list2)
    if list1.nil?
      return list2
    end

    if list2.nil?
      return list1
    end

    if list1.val > list2.val
      list2.next = merge_two_lists(list1, list2.next)
      list2
    else
      list1.next = merge_two_lists(list1.next, list2)
      list1
    end
  end
end
