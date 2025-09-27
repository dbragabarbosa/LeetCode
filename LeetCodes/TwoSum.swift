//
//  TwoSum.swift
//  LeetCode
//
//  Created by Daniel Braga Barbosa on 06/09/25.
//

//
//  LeetCode #[1] - [Two Sum]
//  Link: https://leetcode.com/problems/two-sum
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
*/

class Solution 
{
// brute force solution
// Step 1: Take the first num in nums
// Step 2: Sum it with the second num and see if it is equal to the target
// Step 3: If it is, return its indices. If not, try to sum with the next sum until the end of nums
// Step 4: Repeat the steps 1 to 3 with the nexts nums until the end of nums
// O(nˆ2) time
// O(1) space
// n = lenght of nums
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] 
    {
        for i in 0..<nums.count 
        {
            for j in (i + 1)..<nums.count 
            {
                if nums[i] + nums[j] == target 
                {
                    return [i, j]
                }
            }
        }
        return []
    }


// Better complexity solution
// Premise: if we have nums[i] + nums[j] == target --> nums[i] == target - nums[j]
// We can create a hash map of the elements in nums
// Step 1: Iterate over nums with index j checking if target - nums[j] is in the hash map.
// Step 2: If it is, return its indices. If not, store the current element in the hashmap
// O(n) time
// O(n) space
// n = lenght of nums
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] 
    {
        var prevMap = [Int: Int]() // val -> index

        for (i, n) in nums.enumerated() 
        {
            let diff = target - n
            if let index = prevMap[diff] 
            {
                return [index, i]
            }
            prevMap[n] = i
        }

        return []
    }
}

import Playgrounds

#Playground
{
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]
    {
        var dic = [Int: Int]()
        var dicFromArray = nums.enumerated()

        for(i, number) in dicFromArray
        {
            if let j = dic[target - number]
            {
                return [i, j]
            }

            dic[number] = i
        }
        
        return []
    }
}
