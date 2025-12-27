// Sorting solution
// O(n log n) time
// O(n) space

// Create a hash map to store the frequency of each number.
// Build a list of [frequency, number] pairs from the map.
// Sort this list in ascending order based on frequency.
// Create an empty result list.
// Repeatedly pop from the end of the sorted list (highest frequency) and append the number to the result.
// Stop when the result contains k elements.
// Return the result list.

class Solution 
{
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] 
    {
        var count = [Int: Int]()
        for num in nums
        {
            count[num, default: 0] += 1
        }

        var arr = [(Int, Int)]()
        for (num, cnt) in count
        {
            arr.append((cnt, num))
        }
        arr.sort { $0.0 < $1.0 }

        var result = [Int]()
        while result.count < k
        {
            result.append(arr.removeLast().1)
        }

        return result
    }
}
