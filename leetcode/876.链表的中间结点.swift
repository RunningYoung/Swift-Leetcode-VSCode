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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var p1,p2 = head
        while p1 != nil && p2.next != nil {
            p1 = p1.next
            p2 = p2.next.next
        }
        return p1
    }
    // 是否存在环
    func hasCircleNode(_ head: ListNode?) -> Bool {
        var p1 = head
        var p2 = head
        while p1 != nil && p2?.next != nil {
            p1 = p1?.next
            p2 = p2?.next?.next
            if p1 == p2 {
                return true
            }
        }
        return false
    }
    //存在环 找到环的起点
    func cicleStartNode(_ head: ListNode?) -> ListNode? {
        var p1 = head
        var p2 = head
        while p1 != nil && p2?.next != nil {
            p1 = p1?.next
            p2 = p2?.next?.next
            
            if p1 == p2 {
                break
            }
            
        }
        p1 = head 
        while p1 != p2 {
            p1 = p1?.next
            p2 = p2?.next
        }
        return p1
    }
}