/*
 * @lc app=leetcode.cn id=83 lang=swift
 *
 * [83] 删除排序链表中的重复元素
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        var dummp = ListNode()
        dummp = head
        var slow = dummp 
        var fast = head
        while fast != nil  {
            
            if slow?.val != fast?.val {
                slow = slow.next
                slow = fast
            }
            fast = fast?.next
            
        }
        slow?.next = nil
        return dummp
    }

}
// @lc code=end

