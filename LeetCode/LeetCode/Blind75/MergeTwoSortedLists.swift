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
// Step 1: Create a dummy node to be the first node of the new linked list
// Step 2: Create a newList that will begin equal to the dummy node
// Step 3: Create a copy l1 for list1 e l2 for list2
// Step 3: Iterate over the l1 and l2 until one of then are empty
    // Step 4: Find the lowest value betweeen the next ones in l1 and l2
    // Step 5: In the list that have the lowest one, add this node to the next in our newList
    // Step 6: Update the list to the next one
    // Step 7: Update our newList to his next one
// Step 8: Check if one of l1 and l2 are not empty
    // Step 9: If yes, add this not empty list to the end of our newList
// Step 10: Return the next of the dummy node, which is the head of our new list made be the merge of the two linked lists list1 and list2
// O(n + m) time
// O(1) space
// n = lenght of list1 and m = lenght of list2
class Solution 
{
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? 
    {
        var dummyNode = ListNode()
        var newList = dummyNode

        var l1 = list1
        var l2 = list2

        while l1 != nil && l2 != nil
        {
            if l1!.val < l2!.val
            {
                newList.next = l1
                l1 = l1?.next
            }
            else
            {
                newList.next = l2
                l2 = l2?.next
            }

            newList = newList.next!
        }

        if l1 != nil
        {
            newList.next = l1
        }
        else if l2 != nil
        {
            newList.next = l2
        }

        return dummyNode.next
    }
}

// Brute force solution
// Step 1: Store the value of both linked lists in an array
// Step 2: Sort the array
// Step 3: Convert the array into a new linked list
// Step 4: Return the new linked list
// O(n) time
// O(n) space