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
    arr1 = (a = []; while l1; a << l1.val; l1 = l1.next; end; a)
    arr2 = (a = []; while l2; a << l2.val; l2 = l2.next; end; a)

   v1 = arr1.reverse.join.to_i
   v2 = arr2.reverse.join.to_i
   val = v1 + v2
   val.to_s.chars.reverse.map(&:to_i)    
end