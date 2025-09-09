class Solution 
{
    // Sorting solution
    // O(n log n) time
    // O(n) space
    func longestConsecutive(_ nums: [Int]) -> Int 
    {
        var numsSorted = nums.sorted()

        var start = 1
        var end = nums.count

        var sequence: Int = 1
        var longestSequence: Int = 1

        while start < end
        {
            if numsSorted[start] == numsSorted[start - 1] + 1
            {
                sequence += 1

                if sequence > longestSequence
                {
                    longestSequence = sequence
                }
            }
            else if numsSorted[start] != numsSorted[start - 1]
            {
                sequence = 0
            }

            start += 1
        }

        return longestSequence
    }
}

// Set solution
// O(n) time
// O(n) space
class Solution 
{
    func longestConsecutive(_ nums: [Int]) -> Int 
    {
        if nums.isEmpty 
        {
            return 0
        }

        let numSet = Set(nums)
        var longest = 0

        for num in numSet 
        {
            if !numSet.contains(num - 1) 
            {
                var currentNum = num
                var length = 1

                while numSet.contains(currentNum + 1) 
                {
                    currentNum += 1
                    length += 1
                }

                longest = max(longest, length)
            }
        }

        return longest
    }
}
