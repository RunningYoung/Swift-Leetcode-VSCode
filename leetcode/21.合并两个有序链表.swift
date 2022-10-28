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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy:ListNode? = ListNode(), p = dummy
        var p1:ListNode? = list1,p2:ListNode? = list2
        while p1 != nil && p2 != nil   {
            if p1!.val > p2!.val
            {
                p?.next = p2!
                p2 = p2!.next
            } else {
                p?.next = p1!
                p1 = p1!.next
            }
            p = p?.next
        }
        if p1 != nil {
            p?.next = p1!
        }
        if p2 != nil {
            p?.next = p2!
        }
        return dummy?.next
    }
}