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
      func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard !lists.isEmpty else {
            return nil
        }
        var valList = [Int]()
        for i in 0..<lists.count {
           var list = lists[i]
            while list != nil {
                valList.append(list!.val)
                list = list!.next
            }
        }

        if valList.count == 0 {
            return nil
        }

        valList = valList.sorted()

        var dummy = ListNode(valList[0])
        var p = dummy
        for j in 1..<valList.count {
            p.next = ListNode(valList[j])
            p = p.next!
        }
        return dummy
    }
}