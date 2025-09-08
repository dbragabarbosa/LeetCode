class Solution 
{
    // Hash set solution
    // O(n) time
    // O(n) space
    func containsDuplicate(_ nums: [Int]) -> Bool 
    {
        var seen = Set<Int>()

        for num in nums
        {
            if seen.contains(num)
            {
                return true
            }

            seen.insert(num)
        }

        return false
    }

    // hash set lenght solution
    // O(n) time
    // O(n) space
    func containsDuplicate(_ nums: [Int]) -> Bool 
    {
        return Set(nums).count < nums.count
    }


    // Sorting solution
    // O(n log n) time
    // O(1) space
    func hasDuplicate(_ nums: [Int]) -> Bool 
    {
        var nums = nums.sorted()

        for i in 1..<nums.count 
        {
            if nums[i] == nums[i - 1] 
            {
                return true
            }
        }

        return false
    }
}

// Brute force solution
// iterate over all the array and, for every single num in nums, we pass in all the array trying to find this same num
// O(n * n) time
// O(1) space

// Create a dictionary with the lenght of nums and 0 in every value
// For num in nums: in the key num, sum 1 to the value. If the value is greater than 2, we can already return true
// If we finish  the dictionary and did not have returned true, we return false 
// O(n) in the worst case, time
// O(n) space