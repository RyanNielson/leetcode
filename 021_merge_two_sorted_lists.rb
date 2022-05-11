# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  list1_a = list_to_array(list1)
  list2_a = list_to_array(list2)
  (list1_a + list2_a).sort
end

def list_to_array(list)
  return [] unless list

  arr = []

  loop do
    arr << list.val

    break unless list.next

    list = list.next
  end

  arr
end
