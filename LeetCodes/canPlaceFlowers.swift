class Solution 
{
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool 
    {
        var maxNewFlowers: Int = 0
        var i = 0
        var flowerbedLenght = flowerbed.count

        while i < flowerbedLenght
        {
             if flowerbed[i] == 0 
             {
                let emptyLeft = (i == 0) || (flowerbed[i-1] == 0)
                let emptyRight = (i == flowerbedLenght - 1) || (flowerbed[i+1] == 0)

                if emptyLeft && emptyRight 
                {
                    maxNewFlowers += 1
                    i += 1
                }
            }

            i+=1
        }

        return maxNewFlowers >= n        
    }
}