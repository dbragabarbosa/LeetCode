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

 // Reverse and merge solution
 // O(n) time
 // O(1) space

class Solution 
{
    func reorderList(_ head: ListNode?) 
    {
        var slow = head
        var fast = head?.next

        while fast != nil && fast?.next != nil
        {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var second = slow?.next
        var prev: ListNode? = nil
        slow?.next = nil

        while second != nil
        {
            let tmp = second?.next
            second?.next = prev
            prev = second
            second = tmp
        }

        var first = head
        second = prev

        while second != nil
        {
            let tmp1 = first?.next
            let tmp2 = second?.next
            first?.next = second
            second?.next = tmp1
            first = tmp1
            second = tmp2
        }
    }
}