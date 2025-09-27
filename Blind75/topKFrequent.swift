class Solution 
{
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] 
    {
        var hashMap = [Int : Int]()

        for n in nums
        {
            hashMap[n, default: 0] += 1
        }

        var arr = [(Int, Int)]()

        for (num, count) in hashMap 
        {
            arr.append((count, num))
        }

        arr.sort
        { 
            $0.0 < $1.0 
        }

        var result = [Int]()

        for i in 1...k
        {
            result.append(arr.removeLast().1)
        }

        return result
    }
}

// O(n log n) time
// O(n) space
