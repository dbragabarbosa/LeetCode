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
// Step 1: Store the nodes of the list into an array, 
// Step 2: Remove the nth node from the array
// Step 3: Convert the array back into a linked list
// Step 4: Return the new head
// O(n) time
// O(n) space
class Solution 
{
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? 
    {
        var nodes: [ListNode] = []
        var cur = head

        while cur != nil
        {
            nodes.append(cur!)
            cur = cur?.next
        }

        let removeIndex = nodes.count - n
        if removeIndex == 0
        {
            return head?.next
        }

        nodes[removeIndex - 1].next = nodes[removeIndex].next
        return head
    }
}

// Iteration: two pass solution
// Step 1: Iterate over the list to find the lenght of the list
// Step 2: Calculate the position of the node to be removed
// Step 3: Rmove the node in the position calculated
// Step 4: Return the head
// O(n) time
// O(1) space
class Solution 
{
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? 
    {
        var N = 0
        var cur = head

        while cur != nil
        {
            N += 1
            cur = cur?.next
        }

        let removeIndex = N - n

        if removeIndex == 0 
        {
            return head?.next
        }

        cur = head

        for i in 0..<(N-1)
        {
            if (i+1) == removeIndex
            {
                cur?.next = cur?.next?.next
                break
            }
            cur = cur?.next
        }

        return head
    }
}

// Two pointers solution
// Step 1: Create two pointers
// Step 2: Move the first pointer n steps ahead and put the second pointer at the head
// Step 3: Iterate both pointers until the first one reaches nil
// Step 4: Remove the node that is next to the second pointer (the second pointer is n nodes behind the first pointer, so when the first pointer reaches the end, the second pointer is exactly n nodes from the end, so, at this point, the second pointer is just before the node to be removed)
// O(n) time
// O(1) space
class Solution 
{
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? 
    {
        let dummy = ListNode(0, head)
        var left: ListNode? = dummy
        var right: ListNode? = head
        var n = n

        while n > 0
        {
            right = right?.next
            n -= 1
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