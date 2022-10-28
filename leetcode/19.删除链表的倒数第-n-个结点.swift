/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第 N 个结点
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head?.next == nil {
            return nil
        }
        var dummy : ListNode? = ListNode()
        dummy?.next = head
        var p = dummy?.next
        var p1 = head
        for i in 0..<n {
            p1 = p1?.next
        }
        if p1 == nil {
            dummy?.next = p?.next
            return dummy?.next
        }
        p1 = p1?.next
        while p1 != nil {
            p1 = p1!.next
            p = p!.next
        }
        p?.next = p?.next?.next
        return dummy?.next
    }
}
// @lc code=end

