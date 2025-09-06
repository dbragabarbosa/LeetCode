//
//  LeetCode #[121] - [Best Time to Buy and Sell Stock]
//  Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock
//
//  Resolução por Daniel Braga Barbosa
//  https://github.com/dbragabarbosa/LeetCode
//

import Foundation

// Descrição:
/*
You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
*/

class SolutionMaxProfit
{
    func maxProfit(_ prices: [Int]) -> Int 
    {
        var min = Int.max
        var max = 0

        for price in prices
        {
            if price < min
            {
                min = price
            }
            else if price - min > max
            {
                max = price - min
            }
        }
        
        return max
    }
}
