module Q19RemoveNthNodeFromEndOfList
  def remove_nth_from_end(head, n)
    # Algo fast and slow pointers
    dummy = ListNode.new(0)
    dummy.next = head
    l = dummy
    r = dummy

    # right node is n steps ahead of the left node
    n.times do
      r = r.next
    end

    while r != nil
      l = l.next
      r = r.next
    end

    l.next = l.next.next
    dummy.next
  end
end
