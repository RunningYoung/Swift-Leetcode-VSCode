/*
 * @lc app=leetcode.cn id=1094 lang=swift
 *
 * [1094] 拼车
 */

// @lc code=start
class Difference {
    var diff: [Int]
     init (_ nums:[Int]) {
        self.diff = Array.init(repeating: 0, count: nums.count)
        self.diff[0] = nums[0]
        for i in 1..<nums.count {
            self.diff[i] = nums[i] - nums[i - 1]
        }
    }
    
    func increment(i: Int, j:Int, val:Int) {
        self.diff[i] += val
        
        if j + 1 < self.diff.count {
            self.diff[j + 1] -= val
        }
        
    }
    
    
    func result() -> [Int] {
        var res: [Int] = Array.init(repeating: 0, count: self.diff.count)
        res[0] = self.diff[0]
        for i in 1..<self.diff.count {
            res[i] = res[i - 1] + diff[i]
        }
        return res
    }
    
}

class Solution {
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        let nums = Array.init(repeating: 0, count: 1001)
        let diff = Difference.init(nums)
        for num in trips {
            let i = num[1]
            let j = num[2] - 1
            let val = num[0]
            diff.increment(i: i, j: j, val: val)
        }
        let res:[Int] = diff.result()
        for item in res {
            if item > capacity {
                return false
            }
        }
        return true
    }
}
// @lc code=end

