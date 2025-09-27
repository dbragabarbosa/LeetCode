class Solution 
{
    func productExceptSelf(_ nums: [Int]) -> [Int] 
    {
        var end = nums.count - 1

        var answer: [Int] = Array(repeating: 1, count: end+1)        

        var leftProduct = 1
        var start = 0
        while start <= end
        {
            answer[start] = leftProduct
            leftProduct = leftProduct * nums[start]
            start += 1
        }

        var rightProduct = 1
        while end >= 0
        {
            answer[end] = answer[end] * rightProduct
            rightProduct = rightProduct * nums[end]
            end -= 1
        }

        return answer
    }
}