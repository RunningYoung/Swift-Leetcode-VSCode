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
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
       var dummy1:ListNode? = ListNode()
       var dummy2:ListNode? = ListNode()
       var p1:ListNode? = dummy1
       var p2:ListNode? = dummy2
       var p:ListNode? = head
       while p != nil {
        
        if p!.val < x {
            p1?.next = p
            p1 = p1?.next
        } else {
            p2?.next = p
            p2 = p2?.next
        }
        var temp:ListNode? = p?.next
        p?.next = nil
        p = temp
       }
        p1?.next = dummy2?.next
        return dummy1?.next
    }
}