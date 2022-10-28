/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除有序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        var slow = 0
        var fast = 0
        while fast < nums.count() {
            
            if nums[slow] != nums[fast] {
                nums[slow+1] = nums[fast]
                slow++
            }
            fast++
        }

        return slow + 1
        
    }
}
// @lc code=end

