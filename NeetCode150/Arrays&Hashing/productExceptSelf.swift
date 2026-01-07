// O(n) time
// O(n) space

class Solution 
{
    func productExceptSelf(_ nums: [Int]) -> [Int] 
    {
        let n = nums.count
        var res = [Int](repeating: 0, count: n)
        var pref = [Int](repeating: 0, count: n)
        var suff = [Int](repeating: 0, count: n)

        pref[0] = 1
        suff[n - 1] = 1

        for i in 1..<n 
        {
            pref[i] = nums[i - 1] * pref[i - 1]
        }

        for i in stride(from: n - 2, through: 0, by: -1) 
        {
            suff[i] = nums[i + 1] * suff[i + 1]
        }

        for i in 0..<n 
        {
            res[i] = pref[i] * suff[i]
        }

        return res
    }
}