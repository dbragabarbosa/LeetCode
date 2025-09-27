class Solution 
{
    // Sorting solution
    // O(n log n + m log m) time
    // O(n + m) space
    // n = lenght of s and t = lenght of t
    func isAnagram(_ s: String, _ t: String) -> Bool 
    {
        var sArray = Array(s)
        var tArray = Array(t)

        if tArray.count != sArray.count
        {
            return false
        }

        return sArray.sorted() == tArray.sorted()
    }


    // Hash Map solution
    // O(n + m) time
    // O(1) space
    // n = lenght of s and t = lenght of t
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

        for i in 0..<s.count {
            countS[sArray[i], default: 0] += 1
            countT[tArray[i], default: 0] += 1
        }

        return countS == countT
    }
}

// brute force solution
// create a array of characters from s
// create a array of characters from t
// for every character in s, pass in the t array to see if I can find this character
// If I cant, so it is not an anagram
// If i can, remove that character from t and try the next character in s
// O(n) space, n = max from s or t
// O(n*m), n = s.count and m = t.count

// better solution
// create a sorted array of characters from s
// create a sorted array of characters from t
// If they are equals, it is an anagram
// O(n) space, n = max from s or t
// O(n log m), n = s.count and m = t.count