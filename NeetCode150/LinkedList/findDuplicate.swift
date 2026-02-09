// Negative marking solution
// O(n) time
// O(1) space

class Solution 
{
    func findDuplicate(_ nums: [Int]) -> Int 
    {
        var nums = nums

        for num in nums
        {
            let index = abs(num) - 1

            if nums[index] < 0
            {
                return abs(num)
            }

            nums[index] *= -1
        }

        return -1
    }
}