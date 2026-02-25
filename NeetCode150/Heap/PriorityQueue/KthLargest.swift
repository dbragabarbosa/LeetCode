// O(m * log k) time
// O(k) space
// m = number of calls to add()

class KthLargest 
{
    private var minHeap: Heap<Int>
    private let k: Int

    init(_ k: Int, _ nums: [Int]) 
    {
        self.k = k
        self.minHeap = Heap<Int>()

        for num in nums
        {
            minHeap.insert(num)

            if minHeap.count > k
            {
                minHeap.popMin()
            }
        }
    }
    
    func add(_ val: Int) -> Int 
    {
        minHeap.insert(val)

        if minHeap.count > k
        {
            minHeap.popMin()
        }

        return minHeap.min!
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */