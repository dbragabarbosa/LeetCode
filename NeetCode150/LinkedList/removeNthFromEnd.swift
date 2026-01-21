/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

 // Two pointers solution
 // O(n) time
 // O(1) space

class Solution 
{
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? 
    {
        var dummy = ListNode(0, head)
        var left: ListNode? = dummy
        var right: ListNode? = head
        var number = n

        while number > 0
        {
            right = right?.next
            number -= 1
        }

        while right != nil
        {
            left = left?.next
            right = right?.next
        }

        left?.next = left?.next?.next

        return dummy.next
    }
}
