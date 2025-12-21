//
//  LeetCode #[344] - [Reverse String]
//  Link: https://leetcode.com/problems/reverse-string
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

class SolutionReverseString
{
    func reverseString(_ s: inout [Character]) 
    {
        var start = 0
        var end = s.count - 1

        while start < end
        {
            var aux = s[start]
            s[start] = s[end]
            s[end] = aux

            start += 1
            end -= 1
        }
    }
}
