class Solution 
{
    // Two pointers solution
    // O(nˆ2) time
    // O(n + m) space, n for the sorted() and m for the output list
    // m = number of triplets and n = length of nums
    func threeSum(_ nums: [Int]) -> [[Int]] 
    {
        var result = [[Int]]()
        var numsSorted = nums.sorted()

        for index in 0..<numsSorted.count
        {
            let value = numsSorted[index]
            if value > 0
            {
                break
            }

            if index > 0 && value == numsSorted[index-1]
            {
                continue
            }

            var left = index + 1
            var right = numsSorted.count - 1

            while left < right
            {
                var sum = value + numsSorted[left] + numsSorted[right]

                if sum > 0
                {
                    right -= 1
                }
                else if sum < 0
                {
                    left += 1
                }
                else
                {
                    result.append([value, numsSorted[left], numsSorted[right]])

                    left += 1
                    right -= 1
                    while(numsSorted[left] == numsSorted[left - 1]) && left < right
                    {
                        left += 1
                    }
                }
            }
        }

        return result
    }
}

// Brute force solution
// O(nˆ3) time
// O(m) space
// m = output and n = length of nums
class Solution 
{
    func threeSum(_ nums: [Int]) -> [[Int]] 
    {
        var res = Set<[Int]>()
        let nums = nums.sorted()

        for i in 0..<nums.count 
        {
            for j in (i + 1)..<nums.count 
            {
                for k in (j + 1)..<nums.count 
                {
                    if nums[i] + nums[j] + nums[k] == 0 
                    {
                        let tmp = [nums[i], nums[j], nums[k]]
                        res.insert(tmp)
                    }
                }
            }
        }
        return Array(res)
    }
}