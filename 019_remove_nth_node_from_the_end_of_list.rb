# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  previous_nodes = []
  node = head

  loop do 
    previous_nodes << node
    break if node.next == nil
    node = node.next
  end

  node_before = previous_nodes[-n - 1]
  node_to_remove = previous_nodes[-n]

  if node_before == nil 
    head = head.next
  else
    node_before.next = node_to_remove.next
  end

  head
end
