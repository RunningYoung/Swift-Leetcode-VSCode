/*
 * @lc app=leetcode.cn id=167 lang=swift
 *
 * [167] 两数之和 II - 输入有序数组
 */

// @lc code=start
class Solution {
    // func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    //     var left = 0
    //     var right = numbers.count - 1
    //     while numbers[left] < numbers[right] {
    //         var sum = numbers[left] + numbers[right]
    //         if sum == target {
    //             return [left,right]
    //         } else if sum < target{
    //             left += 1
    //         } else if sum > target {
    //             right -= 1
    //         }
    //     }
    //     return [-1,-1]
    // }
    //nSum 通用函数
    func nSum(_ numbers: [Int],_ n: Int,_ start: Int,_ target: Int) -> [[Int]]{
        let count = numbers.count
        var res = [[Int]]()
        if n < 2 || count < n {
            return res
        }
        if n == 2 {
            var left = start
            var right = count - 1
            while left < right {
                let sum = numbers[left] + numbers[right]
                let hl = numbers[left]
                let hr = numbers[right]
                if sum < target {
                    left += 1 
                } else if sum > target {
                    right -= 1
                } else {
                    res.append([numbers[left],numbers[right]])
                    while left < right && numbers[left] == hl {
                        left += 1
                    }
                    while left < right && numbers[right] == hr {
                        right -= 1
                    }
                }
            }
        } 
        else {
            var i: Int = start
            while i < count {
                var sub = nSum(numbers, n - 1, i + 1, target - numbers[i])
                for (index,item) in sub.enumerated() {
                    var temp = item
                    temp.append(numbers[i])
                    sub[index] = temp
                    res.append(temp)
                }
                while i < count - 1 && numbers[i] == numbers[i + 1] {
                    i += 1
                }
                i += 1
            }
        }
        
       return res 
    }
}
//
var test = Solution()
var arr = [1,2,3,5,6,7,8,8,8,9,9,9,10,23,25,26,34,35]
var res = test.nSum(arr, 5, 0, 34)
print("ssssssssssss--\(res.enumerated())")




// @lc code=end

