// O(n log n) time
// O(n) space

class Solution 
{
    func lastStoneWeight(_ stones: [Int]) -> Int 
    {
        var heap = Heap(stones)

        while heap.count > 1
        {
            let first = heap.popMax()!
            let second = heap.popMax()!

            if first > second
            {
                heap.insert(first - second)
            }
        }

        if heap.isEmpty
        {
            return 0
        }

        return heap.popMax()!
    }
}
