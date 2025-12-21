class Solution 
{

    func containsDuplicate(_ nums: [Int]) -> Bool 
    {
        var arrayOfNums = [Int]()

        for num in nums
        {
            if arrayOfNums.contains(num)
            {
                return true
            }

            arrayOfNums.append(num)
        }

        return false
    }
}
// O(n) space, n = size of nums
// O(n) time, n = size of nums