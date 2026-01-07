// Hash table solution
// O(m * n) time
// O(m * n) space
// m = number of strings
// n = length of the longest string

class Solution 
{
    func groupAnagrams(_ strs: [String]) -> [[String]] 
    {
        var result = [Array<Int>: [String]]()

        for string in strs
        {
            var count = [Int](repeating: 0, count: 26)

            for char in string
            {
                count[Int(char.asciiValue!) - 97] += 1
            }

            result[count, default: []].append(string)
        }

        return Array(result.values)
    }
}