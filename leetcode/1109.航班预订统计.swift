/*
 * @lc app=leetcode.cn id=1109 lang=swift
 *
 * [1109] 航班预订统计
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
    func corpFlightBookings(_ bookings: [[Int]], _ n: Int) -> [Int] {
        let nums = Array.init(repeating: 0, count: n)
        let diffClass = Difference.init(nums)
        for booking in bookings {
            let i = booking[0] - 1
            let j = booking[1] - 1
            let val = booking[2]
            diffClass.increment(i : i, j: j, val: val)
        }
        return diffClass.result()
    }
}
// @lc code=end

