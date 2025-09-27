class Solution 
{
    func reverseWords(_ s: String) -> String 
    {
        var sArray = Array(s)
        var result: [String] = []
        var newWord = [Character]()

        var start = 0
        var end = sArray.count - 1

        while start <= end
        {
            if sArray[end] != " "
            {
                newWord.append(sArray[end])
            }
            else
            {
                if !newWord.isEmpty
                {
                    result.append(String(newWord.reversed()))
                    newWord.removeAll()
                }
            }

            end -= 1
        }

        if !newWord.isEmpty
        {
            result.append(String(newWord.reversed()))
        }

        return result.joined(separator: " ")
    }
}