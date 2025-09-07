//
//  LeetCode #[1071] - [GreatestCommonDivisorOfStrings]
//  Link: https://leetcode.com/problems/greatest-common-divisor-of-strings
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
Write a function that reverses a string. The input string is given as an array of characters s.

You must do this by modifying the input array in-place with O(1) extra memory.
*/

class Solution 
{
    func gcdOfStrings(_ str1: String, _ str2: String) -> String 
    {

        if str1 + str2 != str2 + str1 {
            return ""
        }

        let length = gcd(str1.count, str2.count)
        return String(str1.prefix(length))
    }

    func gcd(_ a: Int, _ b: Int) -> Int 
    {
        var a = a
        var b = b

        while b != 0 
        {
            let temp = b
            b = a % b
            a = temp
        }

        return a
    }
}