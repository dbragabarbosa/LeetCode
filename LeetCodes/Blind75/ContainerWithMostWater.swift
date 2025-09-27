// Brute force solution
// Try all pairs of heights in the height array, compute the water for each pair, and return the maximum water among all pairs.
// O(nˆ2) time
// O(1) space
// n = lenght of height array

// class Solution 
// {
//     func maxArea(_ height: [Int]) -> Int 
//     {
//         var waterStore: Int = 0

//         for i in 0..<height.count
//         {
//             for j in (i+1)..<height.count
//             {
//                 waterStore = max(waterStore, min(height[i], height[j]) * (j - i))
//             }
//         }

//         return waterStore
//     }
// }

// Two pointers solution
// O(n) time
// O(1) space
// n = lenght of height array
class Solution 
{
    func maxArea(_ height: [Int]) -> Int 
    {
        var waterStore: Int = 0

        var left: Int = 0 
        var right: Int = height.count - 1

        while left < right
        {
            let area = (min(height[left], height[right]) * (right - left))
            waterStore = max(waterStore, area)

            if height[left] <= height[right]
            {
                left += 1
            }
            else
            {
                right -= 1
            }
        }

        return waterStore
    }
}