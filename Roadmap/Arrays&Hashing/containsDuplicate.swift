// Brute force solution
// O(n) time
// O(1) space
// class Solution
// {
//     func containsDuplicate(_ nums: [Int]) -> Bool
//     {
//         for i in 0..<nums.count
//         {
//             for j in 1..<nums.count
//             {
//                 if nums[i] == nums[j]
//                 {
//                     return true
//                 }
//             }
//         }
//     }
// }


// Hash Set solution
// O(n) space, n = size of nums
// O(n) time, n = size of nums
class Solution 
{

    func containsDuplicate(_ nums: [Int]) -> Bool 
    {
        var seen = Set<Int>()

        for num in nums
        {
            if seen.contains(num)
            {
                return true
            }

            seen.insert(num)
        }

        return false
    }
}
