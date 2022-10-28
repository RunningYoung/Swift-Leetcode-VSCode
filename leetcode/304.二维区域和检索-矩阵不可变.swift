/*
 * @lc app=leetcode.cn id=304 lang=swift
 *
 * [304] 二维区域和检索 - 矩阵不可变
 */

// @lc code=start

class NumMatrix {
    
    var preSum: [[Int]]

    init(_ matrix: [[Int]]) {
        let n = matrix.count
        let m = matrix[0].count
        let sum = Array.init(repeating: 0, count: m + 1)
         self.preSum = Array.init(repeating: sum, count: n + 1)
        for i in 1...n {
            for j in 1...m {
                self.preSum[i][j] = self.preSum[i-1][j] + self.preSum[i][j-1] + matrix[i - 1][j - 1] - self.preSum[i-1][j-1]
            }
            
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        return self.preSum[row2 + 1][col2 + 1] - self.preSum[row1][col2 + 1] - self.preSum[row2 + 1][col1] + self.preSum[row1][col1]
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
  */
  let matrix = [[3,0,1,4,2],[5,6,3,2,1],[1,2,0,1,5],[4,1,0,1,7],[1,0,3,0,5]]
  let obj = NumMatrix(matrix)
  let ret_1: Int = obj.sumRegion(2, 1, 4, 3)
  print(ret_1)

//  [[[[3,0,1,4,2],[5,6,3,2,1],[1,2,0,1,5],[4,1,0,1,7],[1,0,3,0,5]]],[2,1,4,3],[1,1,2,2],[1,2,2,4]]
// @lc code=end

