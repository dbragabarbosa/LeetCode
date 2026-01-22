/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

 // Hash map solution (Two Pass)
 // O(n) time
 // O(n) space

class Solution 
{
    func copyRandomList(_ head: Node?) -> Node? 
    {
        var oldToCopy: [Node?: Node?] = [nil: nil]

        var cur = head
        while cur != nil
        {
            let copy = Node(cur!.val)
            oldToCopy[cur] = copy
            cur = cur?.next
        }

        cur = head
        while cur != nil
        {
            let copy = oldToCopy[cur]!
            copy?.next = oldToCopy[cur?.next]!
            copy?.random = oldToCopy[cur?.random]!
            cur = cur?.next
        }

        return oldToCopy[head]!
    }
}