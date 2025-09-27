// Brute force solution
// O(n) time
// O(1) space
// class Solution 
// {
//     func findMin(_ nums: [Int]) -> Int 
//     {
//         return nums.min()!
//     }
// }

// Binary search solution
// O(log n) time
// O(1) space
class Solution 
{
    func findMin(_ nums: [Int]) -> Int 
    {
        var minResult: Int = Int.max

        var left = 0 
        var right = nums.count - 1

        while left <= right
        {
            if nums[right] > nums[left] // We are already in the ordenated part of the array
            {
                minResult = min(minResult, nums[left])
                break
            }
            
            var mid = (left + right) / 2

            minResult = min(minResult, nums[mid])

            if nums[mid] >= nums[left]
            {
                left = mid + 1
            }
            else
            {
                right = mid - 1
            }
        }

        return minResult
    }
}