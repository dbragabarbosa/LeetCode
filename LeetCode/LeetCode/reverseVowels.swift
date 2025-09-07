class Solution 
{
    func reverseVowels(_ s: String) -> String 
    {
        var sArray = Array(s)
        var start = 0
        var end = sArray.count - 1

        while start < end
        {
            if isNotVowel(sArray[start])
            {
                start += 1
                continue
            }

            if isNotVowel(sArray[end])
            {
                end -= 1
                continue
            }

            sArray.swapAt(start, end)

            start += 1
            end -= 1
        }

        return String(sArray)
    }

    func isNotVowel(_ character: Character) -> Bool
    {
        let lowercased = character.lowercased()

        if lowercased == "a" || lowercased == "e" || lowercased == "i" || lowercased == "o" || lowercased == "u"
        {
            return false
        }

        return true
    }
}