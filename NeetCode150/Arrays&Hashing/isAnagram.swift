class Solution 
{
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
}