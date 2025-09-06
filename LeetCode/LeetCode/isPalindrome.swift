//
//  LeetCode #[125] - [Valid Palindrome]
//  Link: https://leetcode.com/problems/valid-palindrome
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.
*/

class SolutionValidPalindrome
{
    func isPalindrome(_ s: String) -> Bool 
    {
        var sArray = Array(s.lowercased())

        sArray = sArray.filter
        {
            $0.isLetter || $0.isNumber
        }

        var left = 0
        var right = sArray.count - 1

        while left < right
        {
            if sArray[left] != sArray[right]
            {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
