// Binary search solution
// O(log n) time
// O(1) space
// n = lenght of nums
class Solution 
{
    func search(_ nums: [Int], _ target: Int) -> Int 
    {
        var targetIndex: Int = -1

        var left = 0
        var right = nums.count - 1


        while left <= right
        {
            let mid = (left + right) / 2

            if nums[mid] == target
            {
                return mid
            }

            if nums[mid] >= nums[left] // Left part ordened
            {
                if nums[left] <= target && target < nums[mid]
                {
                    right = mid - 1
                }
                else
                {
                    left = mid + 1
                }
            }
            else // Right part ordened
            {
                if nums[mid] < target && target <= nums[right]
                {
                    left = mid + 1
                }
                else 
                {
                    right = mid - 1
                }
            }
        }

        return targetIndex
    }
}