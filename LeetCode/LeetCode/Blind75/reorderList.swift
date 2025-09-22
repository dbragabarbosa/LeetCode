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

// Brute force solution
// Store the node values of the list in an array, reorder the values, and create a new list
// O(n) time 
// O(n) space
class Solution 
{
    func reorderList(_ head: ListNode?) 
    {
        if head == nil
        {
            return
        }

        var nodes: [ListNode] = []
        var cur = head

        while cur != nil
        {
            nodes.append(cur!)
            cur = cur?.next
        }

        var i = 0
        var j = nodes.count - 1

        while i < j
        {
            nodes[i].next = nodes[j]

            i += 1

            if i >= j
            {
                break
            }

            nodes[j].next = nodes[i]
            
            j -= 1
        }

        nodes[i].next = nil
    }
}


// Reverse and merge solution
// Step 1: Find half of the list using a fast pointer and a slow pointer
// Step 2: Reverse the links from the second part of the list
// Step 3: Go through the list, swapping the links. The first in the first part of the list is the first in the second part, and so on.
// O(n) time
// O(1) space
class Solution 
{
    func reorderList(_ head: ListNode?) 
    {
        // Step 1
        var slow = head
        var fast = head?.next

        while fast != nil && fast?.next != nil
        {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // Step 2
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

        // Step 3
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