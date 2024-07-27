require_relative "./test_helper"

class Q2AddTwoNumbersTest < Minitest::Test
  include Q2AddTwoNumbers

  def test_it_works
    l1 = ListNode.new(
      2,
      ListNode.new(
        4,
        ListNode.new(3)
      )
    )

    l2 = ListNode.new(
      5,
      ListNode.new(
        6,
        ListNode.new(4)
      )
    )

    l = add_two_numbers(l1, l2)
    assert_equal 7, l.val
    assert_equal 0, l.next.val
    assert_equal 8, l.next.next.val
    assert_nil l.next.next.next

    l1 = ListNode.new(0)
    l2 = ListNode.new(0)
    l = add_two_numbers(l1, l2)
    assert_equal 0, l.val
    assert_nil l.next
  end
end
