# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  first = head
  front = nil

  loop do 
    second = first&.next

    if first && second 
      first.next = second.next
      second.next = first
      front.next = second if front
      head = second if front == nil
    end

    break if first&.next == nil || second&.next == nil
    front = first
    first = first.next
  end

  head
end
