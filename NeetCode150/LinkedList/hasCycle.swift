/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

 // Hash Set solution
 // O(n) time
 // O(n) space

// class Solution 
// {
//     func hasCycle(_ head: ListNode?) -> Bool 
//     {
//         var seen = Set<ObjectIdentifier>()
//         var cur = head

//         while cur != nil
//         {
//             let nodeId = ObjectIdentifier(cur!)

//             if seen.contains(nodeId)
//             {
//                 return true
//             }

//             seen.insert(nodeId)

//             cur = cur?.next
//         }

//         return false
//     }
// }

 // Two pointers solution
 // O(n) time
 // O(1) space

class Solution 
{
    func hasCycle(_ head: ListNode?) -> Bool 
    {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil
        {
            slow = slow?.next
            fast = fast?.next?.next

            if slow === fast
            {
                return true
            }
        }

        return false
    }
}