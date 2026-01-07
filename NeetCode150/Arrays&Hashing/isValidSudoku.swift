// Hash set solution
// O(nˆ2) time
// O(nˆ2) space

class Solution 
{
    func isValidSudoku(_ board: [[Character]]) -> Bool 
    {
        var cols = [Int: Set<Character>]()
        var rows = [Int: Set<Character>]()
        var squares = [String: Set<Character>]()

        for r in 0..<9 
        {
            for c in 0..<9 
            {
                if board[r][c] == "." { continue }

                let squareKey = "\(r / 3),\(c / 3)"

                if rows[r]?.contains(board[r][c]) == true ||
                   cols[c]?.contains(board[r][c]) == true ||
                   squares[squareKey]?.contains(board[r][c]) == true 
                {
                    return false
                }

                rows[r, default: []].insert(board[r][c])
                cols[c, default: []].insert(board[r][c])
                squares[squareKey, default: []].insert(board[r][c])
            }
        }

        return true
    }
}