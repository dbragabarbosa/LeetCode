class Solution 
{
    func moveZeroes(_ nums: inout [Int]) 
    {
        var count = 0

        for num in nums
        {
            if num == 0
            {
                count += 1
            }
        }

        nums = nums.filter
        {
            $0 != 0
        }

        while count > 0
        {
            nums.append(0)

            count -= 1
        }
    }
}