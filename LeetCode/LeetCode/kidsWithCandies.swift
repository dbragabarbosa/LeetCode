class Solution 
{
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] 
    {
        var result: [Bool] = []
        var greatestNumber = 0
        var i = 0
        var candiesArrayLenght: Int = (candies.count) - 1

        while i <= candiesArrayLenght
        {
            if candies[i] > greatestNumber
            {
                greatestNumber = candies[i]
            }

            i += 1
        }

        var j = 0

        while j <= candiesArrayLenght
        {
            if candies[j]+extraCandies >= greatestNumber
            {
                result.append(true)
            }
            else
            {
                result.append(false)
            }

            
            j += 1
        }

        return result
    }
}