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

 // Iteration solution
 // Step 1: Create a previous variable to store a empty ListNode
 // Step 2: Create a currente variable to store the head parameter
 // Step 3: Iterate over the Linked List
    // Step 4: Store the next value of the current node
    // Step 5: Change the next value  of the current node to the previous variable
    // Step 6: Update the previous variable now to the current node
    // Step 7: Update current node to the next value stored in step 4
// Step 8: Return the previous variable
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

// Brute force solution
// Step 1: Store the node values of the linked list into an array
// Step 2: Reverse the array
// Step 3: Convert the array back to a linked list
// Step 4: Return the new linked list's head
// O(n) time
// O(n) space