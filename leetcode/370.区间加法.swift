/*
 *
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
        
    
    func getModifiedArray(length: Int,updates: [[Int]]) -> [Int] {
        let nums = Array.init(repeating:0, count: length)
        let diff = Difference.init(nums)
        for item in updates {
            let i = item[0]
            let j = item[1]
            let val = item[2]
            diff.increment(i: i, j: j, val: val)
        }
        let res = diff.result()
        return res
    }

}

var updates = [[1,3,2],[2,4,3],[0,2,-2]]
var so = Solution()
var res = so.getModifiedArray(length: 5, updates: updates) 
print(res)
