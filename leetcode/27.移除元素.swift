/*
 * @lc app=leetcode.cn id=27 lang=swift
 *
 * [27] 移除元素
 */

// @lc code=start
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        var slow = 0
        var fast = 0
        while fast < nums.count {
            
            if nums[fast] != val {
                nums[slow] = nums[fast]
                slow += 1
            }
            fast += 1
            
        }
        return slow
        
    }
}
// @lc code=end

