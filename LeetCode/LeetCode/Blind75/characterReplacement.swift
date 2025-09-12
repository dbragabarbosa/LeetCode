// Sliding Window solution
// O(n) time
// O(n) space
class Solution 
{
    func characterReplacement(_ s: String, _ k: Int) -> Int 
    {
        var lenghtOfTheLongestSubstring: Int = 0
        let sSet = Set(s)
        let sArray = Array(s)

        var count = 0
        var left = 0

        for char in sSet
        {
            count = 0 
            left = 0

            for right in 0..<sArray.count
            {
                if sArray[right] == char
                {
                    count += 1
                }

                while (right - left + 1) - count > k
                {
                    if sArray[left] == char
                    {
                        count -= 1
                    }

                    left += 1
                }

                lenghtOfTheLongestSubstring = max(lenghtOfTheLongestSubstring, right - left + 1)
            }
        }

        return lenghtOfTheLongestSubstring
    }
}

// Brute force solution
// O(nˆ2) time
// O(n) space
class Solution 
{
    func characterReplacement(_ s: String, _ k: Int) -> Int 
    {
        var res = 0
        let chars = Array(s)

        for i in 0..<chars.count 
        {
            var count = [Character: Int]()
            var maxf = 0

            for j in i..<chars.count 
            {
                count[chars[j], default: 0] += 1
                maxf = max(maxf, count[chars[j]]!)

                if (j - i + 1) - maxf <= k 
                {
                    res = max(res, j - i + 1)
                }
            }
        }
        
        return res
    }
}