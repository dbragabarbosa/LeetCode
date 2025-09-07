class Solution 
{
    func compress(_ chars: inout [Character]) -> Int 
    {
        var write = 0
        var read = 0
        let n = chars.count

        while read < n
        {
            let currentChar = chars[read]
            var count = 0

            while read < n && chars[read] == currentChar
            {
                read += 1
                count += 1
            }

            chars[write] = currentChar
            write += 1

            if count > 1
            {
                for digit in String(count)
                {
                    chars[write] = digit
                    write += 1
                }
            }
        }

        return write
    }
}