// Sorting solution
// O(n log n + m log m) time
// O(n + m) space
// n = length of s and t = length of t

// class Solution 
// {
//     func isAnagram(_ s: String, _ t: String) -> Bool 
//     {
//         if s.count != t.count
//         {
//             return false
//         }

//         return s.sorted() == t.sorted()
//     }
// }

// Hash map solution
// O(n + m) time
// O(1) space, since we have at most 26 different characters
// n = length of s and t = length of t

class Solution 
{
    func isAnagram(_ s: String, _ t: String) -> Bool 
    {
        if s.count != t.count
        {
            return false
        }

        var countS = [Character: Int]()
        var countT = [Character: Int]()

        let sArray = Array(s)
        let tArray = Array(t)

        for i in 0..<s.count
        {
            countS[sArray[i], default: 0] += 1
            countT[tArray[i], default: 0] += 1
        }

        return countS == countT
    }
}