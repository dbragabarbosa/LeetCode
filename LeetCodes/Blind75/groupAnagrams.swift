// Brute force solution
// Step 1: Pick the first string in strs, and store it as a new [String] in our variable of anagrams
// Step 2: Compare to the second string and see if they are an anagram
// Step 3: If they are, add the second in the same [String] like the first one and go to Step 4. If not, add the second in other [String] in our variable of anagrams and go to Step 5.
// Step 4: Continue iterating comparing the first one now to the third string and so on, repeating the steps 2 and 3, until the end of strs
// Step 5: Change the variable that are picked now to the next one in Step 1 and repeat the steps 2 and 3, until the end of strs
// O(nˆ2) time
// O(1) space
class Solution 
{
    func groupAnagrams(_ strs: [String]) -> [[String]] 
    {
        var anagrams = [[String]]()

        for i in 1..<strs.count
        {
            var newAnagrams = [String]()
            newAnagrams.append(strs[i])

            for j in 1..<strs.count
            {
                if areAnagrams(strs[i], strs[j])
                {
                    newAnagrams.append(strs[j])

                }
            }

            anagrams.append(contentsOf: newAnagrams)
        }

        return anagrams
    }

    func areAnagrams(_ s: String, _ t: String) -> Bool
    {
        var sArray = Array(s)
        var tArray = Array(t)

        if sArray.count != tArray.count
        {
            return false
        }

        return sArray.sorted() == tArray.sorted()
    }
}


// Sorting solution
// O(m * log n) time
// O(m * n) space
// m is the number of strings and n is the length of the longest string
class Solution 
{
    func groupAnagrams(_ strs: [String]) -> [[String]] 
    {
        var res = [String: [String]]()

        for s in strs 
        {
            let sortedS = String(s.sorted())
            res[sortedS, default: []].append(s)
        }

        return Array(res.values)
    }
}


// Hash table solution
// O(m * n) time
// O(m * n) space
// m is the number of strings and n is the length of the longest string
class Solution 
{
    func groupAnagrams(_ strs: [String]) -> [[String]] 
    {
        var res = [Array<Int>: [String]]()

        for s in strs 
        {
            var count = [Int](repeating: 0, count: 26)
            for c in s 
            {
                count[Int(c.asciiValue!) - 97] += 1
            }
            res[count, default: []].append(s)
        }

        return Array(res.values)
    }
}