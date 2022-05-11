# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l1_digits = node_digits(l1)
  l2_digits = node_digits(l2)
  n1 = l1_digits.reverse.join.to_i
  n2 = l2_digits.reverse.join.to_i
  digits_to_node((n1 + n2).digits)
end

def node_digits(node)
  digits = []
  while node
    digits << node.val
    node = node.next
  end
  digits
end

def digits_to_node(digits)
  digits.reverse.reduce(nil) do |memo, digit|
    ListNode.new(digit, memo)
  end
end
