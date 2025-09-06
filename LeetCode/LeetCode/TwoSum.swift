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
