/*
 * @lc app=leetcode.cn id=303 lang=swift
 *
 * [303] 区域和检索 - 数组不可变
 */

// @lc code=start

class NumArray {

    private var preSum: [Int]

    init(_ nums: [Int]) {
        
        self.preSum = Array.init(repeating: 0, count: nums.count + 1)
        for i in 1...nums.count {
            self.preSum[i] = nums[i - 1] + self.preSum[i - 1]
        }
        print(self.preSum)
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return preSum[right + 1] - preSum[left]
    }
}

var test = [1,2,3,4,5,6,7,8,9,10]
var test1 = ["SSSS","FDSDSFDS","SDSSDG"]
var test2 = [-2,0,3,-5,2,-1]

var numArr = NumArray.init(test2)
var res = numArr.sumRange(0, 2)
var res1 = numArr.sumRange(2, 5)
var res2 = numArr.sumRange(0, 5)
print(res)
print(res1)
print(res2)


/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */
// @lc code=end

