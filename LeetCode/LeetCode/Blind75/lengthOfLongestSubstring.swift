// Sliding Window solution
// O(n) time
// O(n) space
class Solution 
{
    func lengthOfLongestSubstring(_ s: String) -> Int 
    {
        var lenghtOfTheLongestSubstring: Int = 0
        var sArray = Array(s)

        var dict = [Character: Int]()
        var left = 0

        for right in 0..<sArray.count
        {
            let letter = sArray[right]

            if let prevIndex = dict[letter], prevIndex >= left
            {
                left = prevIndex + 1
            }

            dict[letter] = right
            lenghtOfTheLongestSubstring = max(lenghtOfTheLongestSubstring, right - left + 1)
        }

        return lenghtOfTheLongestSubstring
    }
}