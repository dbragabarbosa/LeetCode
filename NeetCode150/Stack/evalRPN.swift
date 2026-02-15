// O(n) time
// O(n) space
// n = size of the input array

class Solution 
{
    func evalRPN(_ tokens: [String]) -> Int 
    {
        var stack = [Int]()

        for c in tokens
        {
            switch c
            {
                case "+":
                    stack.append(stack.removeLast() + stack.removeLast())
                case "-":
                    let a = stack.removeLast()
                    let b = stack.removeLast()
                    stack.append(b - a)
                case "*":
                    stack.append(stack.removeLast() * stack.removeLast())
                case "/":
                    let a = stack.removeLast()
                    let b = stack.removeLast()
                    stack.append(b / a)
                default:
                    stack.append(Int(c)!)
            }
        }

        return stack[0]
    }
}