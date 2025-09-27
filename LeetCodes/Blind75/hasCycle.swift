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

 // Hash set solution
// O(n) time
// O(n) space
class Solution 
{
    func hasCycle(_ head: ListNode?) -> Bool 
    {
        var visited = Set<ObjectIdentifier>()
        var node = head

        while let current = node 
        {
            let id = ObjectIdentifier(current)

            if visited.contains(id) 
            {
                return true
            }

            visited.insert(id)
            node = current.next
        }

        return false
    }
}

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