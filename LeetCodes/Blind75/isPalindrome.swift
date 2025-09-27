class Solution 
{
    func isPalindrome(_ s: String) -> Bool 
    {
        var sLowercased = s.lowercased()
        var sArray = Array(sLowercased)
        var sArrayWithNonAlphanumeric = sArray.filter
        {
            $0.isLetter || $0.isNumber
        }

        var start = 0
        var end = sArrayWithNonAlphanumeric.count - 1

        while start < end
        {
            if sArrayWithNonAlphanumeric[start] != sArrayWithNonAlphanumeric[end]
            {
                return false
            }

            start += 1
            end -= 1
        }

        return true
    }
}