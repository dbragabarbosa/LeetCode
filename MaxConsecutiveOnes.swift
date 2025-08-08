//
//  LeetCode #[Número] - [Max Consecutive Ones]
//  Link: https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3238/
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
Given a binary array nums, return the maximum number of consecutive 1's in the array.
*/

class Solution 
{   
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int 
    {
        var atualConsecutive: Int = 0
        var maxConsecutive: Int = 0
        
        for number in nums
        {
            if number == 1
            {
                atualConsecutive += 1
            }
            else if number == 0
            {
                atualConsecutive = 0
            }
            
            if atualConsecutive > maxConsecutive
            {
                maxConsecutive = atualConsecutive
            }
        }
        
        return maxConsecutive
    }
}