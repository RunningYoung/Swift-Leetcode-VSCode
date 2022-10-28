/*
 * @lc app=leetcode.cn id=160 lang=swift
 *
 * [160] 相交链表
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var pA = headA
        var pB = headB
        while pA !== pB {
            if pA == nil {
                pA = headB
            } else {
                pA = pA?.next
            }
            if pB == nil {
                pB = headA
            } else {
                pB = pB?.next
            }
        }
        return pA
    }
}

//[4,1,8,4,5,6,1,8,4,]
//[5,6,1,8,4,4,1,8,4,]

// @lc code=end

