// O(n) time
// O(n) space

class Solution 
{
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] 
    {
        var answer = [Int](repeating: 0, count: temperatures.count)
        var stack = [(Int, Int)]()

        for (index, temp) in temperatures.enumerated()
        {
            while !stack.isEmpty && temp > stack.last!.0
            {
                let (stackTemp, stackIndex) = stack.removeLast()
                answer[stackIndex] = index - stackIndex
            }

            stack.append((temp, index))
        }

        return answer
    }
}