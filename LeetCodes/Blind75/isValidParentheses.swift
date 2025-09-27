// O(n) time
// O(n) space
// n = lenght of s
class Solution 
{
    func isValid(_ s: String) -> Bool 
    {
        var sArray = Array(s)
        var stack: [Character] = [Character]()

        for char in sArray
        {
            if charIsOpenBracket(char)
            {
                stack.append(char)
            }
            else
            {
                guard let stackLast = stack.last else { return false }

                if stackLastIsTheSameType(stackLast, char)
                {
                    stack.removeLast()
                }
                else
                {
                    return false
                }
            }
        }

        return stack.isEmpty
    }

    private func charIsOpenBracket(_ char: Character) -> Bool
    {
        if char == "(" || char == "{" || char == "["
        {
            return true
        }

        return false
    }

    private func stackLastIsTheSameType (_ stackLast: Character?, _ char: Character) -> Bool
    {        
        if (stackLast == "(" && char == ")") || (stackLast == "{" && char == "}") || (stackLast == "[" && char == "]")
        {
            return true
        }

        return false
    }
}