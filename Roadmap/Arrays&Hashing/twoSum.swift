// Brute force solution
// O(nˆ2) time
// O(1) space
// class Solution 
// {
//     func twoSum(_ nums: [Int], _ target: Int) -> [Int] 
//     {
//         for i in 0..<nums.count
//         {
//             for j in (i+1)..<nums.count
//             {
//                 if (nums[i] + nums[j]) == target
//                 {
//                     return [i, j]
//                 }
//             }
//         }
//     }
// }

// Hash Map solution
// O(n) time
// O(n) space
// n = nums length
// class Solution 
// {
//     func twoSum(_ nums: [Int], _ target: Int) -> [Int] 
//     {
//         var hashMap = [Int: Int]() // value : index

//         for (index, value) in nums.enumerated()
//         {
//             hashMap[value] = index
//         }

//         for (index, num) in nums.enumerated()
//         {
//             let diff = target - nums[index]

//             if let j = hashMap[diff], j != index
//             {
//                 return [index, j]
//             }
//         }

//         return [0]
//     }
// }

// Hash Map One Pass solution
// O(n) time
// O(n) space
// n = nums length
class Solution 
{
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] 
    {
        var hashMap = [Int: Int]() // value : index

        for (index, num) in nums.enumerated()
        {
            let diff = target - num

            if let i = hashMap[diff]
            {
                return [i, index]
            }

            hashMap[num] = index
        }

        return [0]
    }
}