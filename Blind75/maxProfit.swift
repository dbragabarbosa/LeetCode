// Better solution
// Step 1: iterate over the array
// take the first one day as buy
// if the next day have a lowest price, we modify this day to the day we bought
// if not, we say that we sell and calculate our profit
// in the next days, if we see a profit bigger, we update the day of profit to it
// O(n) time
// O(1) space
class Solution 
{
    func maxProfit(_ prices: [Int]) -> Int 
    {
        var profit: Int = 0
        var buyDay: Int = Int.max

        for price in prices
        {
            if price < buyDay
            {
                buyDay = price
            }
            else
            {
                var profitToday = price - buyDay
                profit = max(profit, profitToday)
            }
        }

        return profit
    }
}

// Brute force solution
// O(nˆ2) time
// O(1) space
// n = lenght of prices array
class Solution 
{
    func maxProfit(prices: [Int]) -> Int
    {
	var profit: Int = 0

        for i in 1..<prices.count
        {
            for j in 1..<prices.count
            {
                if i - j > profit
                {
                    profit = i - j
                }
            }
        }

        return profit
    }   
}