/*
 * @lc app=leetcode.cn id=283 lang=swift
 *
 * [283] 移动零
 */

// @lc code=start
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        if nums.isEmpty {
            return
        }
        
        var slow = 0
        var fast = 0
        while fast < nums.count {
            if nums[fast] != 0 {
                nums[slow] = nums[fast]
                slow += 1
            }
            fast += 1
        }

        for i in slow..<nums.count {
            nums[i] = 0
        }
    }
}
// @lc code=end

