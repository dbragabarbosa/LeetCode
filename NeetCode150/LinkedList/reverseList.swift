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

// O(n) time
// O(1) space
class Solution 
{
    func reverseList(_ head: ListNode?) -> ListNode? 
    {
        var previous: ListNode? = nil
        var current = head

        while current != nil
        {
            let tempNext = current!.next
            current!.next = previous 
            previous = current
            current = tempNext
        }

        return previous
    }
}