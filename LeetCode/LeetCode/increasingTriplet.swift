class Solution 
{
    func increasingTriplet(_ nums: [Int]) -> Bool 
    {
        var first: Int = Int.max
        var second: Int = Int.max

        for num in nums
        {
            if num <= first
            {
                first = num
            }
            else if num <= second
            {
                second = num
            }
            else
            {
                return true
            }
        }

        return false
    }
}