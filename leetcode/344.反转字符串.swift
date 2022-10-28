/*
 * @lc app=leetcode.cn id=344 lang=swift
 *
 * [344] 反转字符串
 */

// @lc code=start
class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        while left < right {
            var temp = s[right]
            s[right] = s[left]
            s[left] = temp
            left += 1
            right -= 1
        }
    }
}
// @lc code=end

