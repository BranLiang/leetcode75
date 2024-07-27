module Q2AddTwoNumbers
  # Definition for singly-linked list.
  class ListNode
      attr_accessor :val, :next
      def initialize(val = 0, _next = nil)
          @val = val
          @next = _next
      end
  end

  def add_two_numbers(l1, l2)
    # Case 1: l1 or l2 is 0 or nil
    if l1.nil?
      return l2
    end

    if l2.nil?
      return l1
    end

    head_sum = l1.val + l2.val
    head_val = head_sum % 10

    if head_sum >= 10
      # Case 2: Current l1 and l2 value sum is over 10
      l1 = add_two_numbers(l1.next, ListNode.new(1))
      l2 = l2.next
      ListNode.new(head_val, add_two_numbers(l1, l2))
    else
      # Case 3: Current l1 and l2 value sum is less than 10
      l1 = l1.next
      l2 = l2.next
      ListNode.new(head_val, add_two_numbers(l1, l2))
    end
  end
end
