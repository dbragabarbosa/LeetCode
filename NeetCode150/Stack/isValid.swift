// O(n) time
// O(n) space
// n = length of s

class Solution 
{
    func isValid(_ s: String) -> Bool 
    {
        var stack = [Character]()
        let closeToOpen: [Character: Character] = [")": "(", "]": "[", "}": "{"]

        for c in s 
        {
            if let open = closeToOpen[c] 
            {
                if !stack.isEmpty && stack.last! == open 
                {
                    stack.popLast()
                } 
                else 
                {
                    return false
                }
            } 
            else 
            {
                stack.append(c)
            }
        }

        return stack.isEmpty
    }
}


class Solution 
{
    func isValid(_ s: String) -> Bool 
    {
        var stack = [Character]()

        for char in s
        {
            if isOpeningBracket(char)
            {
                stack.append(char)
            }

            if matchTheLastOpeningBracket(lastInStack: stack.last, newChar: char)
            {
                stack.removeLast()
            }
        }

        print("STACK: \(stack)")

        return stack.isEmpty
    }

    func isOpeningBracket(_ char: Character) -> Bool
    {
        if char == "(" || char == "[" || char == "{"
        {
            return true
        }

        return false
    }

    func matchTheLastOpeningBracket(lastInStack: Character?, newChar: Character) -> Bool
    {
        if lastInStack == "(" && newChar == ")"
        {
            return true
        }
        else if lastInStack == "[" && newChar == "]"
        {
            return true
        }
        else if lastInStack == "{" && newChar == "}"
        {
            return true
        }

        return false
    }
}