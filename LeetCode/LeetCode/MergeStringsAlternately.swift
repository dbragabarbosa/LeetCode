//
//  MergeStringsAlternately.swift
//  LeetCode
//
//  Created by Daniel Braga Barbosa on 06/09/25.
//

//
//  LeetCode #[1768] - [Merge String Altenately]
//  Link: https://leetcode.com/problems/merge-strings-alternately
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.
*/

import Playgrounds
import Foundation

#Playground
{
    func mergeAlternately(_ word1: String, _ word2: String) -> String
    {
        var mergedString = ""
        
        var word1Array = Array(word1)
        var word2Array = Array(word2)

        var i = 0
        var j = 0

        while i < word1Array.count || j < word2Array.count
        {
            if i < word1Array.count
            {
                mergedString.append(word1Array[i])
                i += 1
            }

            if j < word2Array.count
            {
                mergedString.append(word2Array[j])
                j += 1
            }
        }

        return mergedString
    }
}
