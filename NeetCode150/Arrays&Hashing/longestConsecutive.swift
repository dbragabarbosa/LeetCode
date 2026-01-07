// Hash Map solution
// O(n) time
// O(n) space
class Solution 
{
    func longestConsecutive(_ nums: [Int]) -> Int 
    {
        var hashMap = [Int: Int]()
        var result = 0

        for num in nums
        {
            if hashMap[num] == nil
            {
                let left = hashMap[num - 1] ?? 0
                let right = hashMap[num + 1] ?? 0
                let length = left + right + 1

                hashMap[num] = length
                hashMap[num - left] = length
                hashMap[num + right] = length

                result = max(result, length)
            }
        }

        return result
    }
}