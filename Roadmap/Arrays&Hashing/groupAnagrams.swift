// Sorting solution
// O(m * n log n) time
// O(m * n) space
// m = number of strings
// n = length of the longest string

class Solution 
{
    func groupAnagrams(_ strs: [String]) -> [[String]] 
    {
        var hashMap = [String: [String]]()

        for string in strs
        {
            let sortedString = String(string.sorted())
            hashMap[sortedString, default: []].append(string)
        }

        return Array(hashMap.values)
    }
}

// Hash Table solution
// O(m * n) time
// O(m * n) space
// m = number of strings
// n = length of the longest string

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