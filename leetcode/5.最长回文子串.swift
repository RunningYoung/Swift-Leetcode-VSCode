/*
 * @lc app=leetcode.cn id=5 lang=swift
 *
 * [5] 最长回文子串
 */

// @lc code=start

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 || s.count == 1{
            return s
        }
        let s = Array(s)
        var res = ""
        var i = 0
        while i < s.count {
            print("iiiiiiiiiiii ----------  \(i)")
            let subStr1: String = self.palindrome(s, i, i)
            print("aaaaaaa-----\(subStr1)")
            let subStr2: String = self.palindrome(s, i, i + 1)
            print("ssssssssssss-----\(subStr2)")
            res = res.count > subStr1.count ? res : subStr1
            res = res.count > subStr2.count ? res : subStr2
            i += 1
        }
        return res
    }
    func palindrome(_ s: [Character] ,_ l: Int, _ r: Int) -> String {
        var l1 = l
        var r1 = r
        while r1 < s.count && l1 >= 0 && s[l1] == s[r1] {
            l1 -= 1
            r1 += 1
          
        }
        print("44444444----l2=\(l1)")
        print("44444444----r2=\(r1)")
        // let p1 = s[s.s_index(l1)]
        // let p2 = s[s.s_index(r1-1)]
        // print("333333333-------p1---\(p1)")
        // print("22222222-------p1---\(p2)")
            
        return String(s[l1 + 1..<r1])
    }
}







/*// swift index 实现  效率太低 放弃使用
extension String {
   func s_index(_ offset:Int) -> String.Index {
    if offset <= 0 {
        return self.startIndex
    }
    if offset >= self.count {
        return self.endIndex
    }
        return self.index(self.startIndex, offsetBy: offset)
    }
}

// extension String{
//     subscript(range: Range<Int>) -> String {
//         get{
//             let rStart = range.startIndex < 0 ? 0 : range.startIndex
//             let rEnd = range.endIndex < 0 ? 0 : range.endIndex
            
//             let startIndex = self.startIndex.advancedBy(rStart, limit: self.endIndex)
//             let endIndex = self.startIndex.advancedBy(rEnd, limit: self.endIndex)
            
//             return self[Range(start: startIndex, end: endIndex)]
//         }
//     }
    
//     subscript(index: Int) -> String{
//         get{
//             return self[index...index]
//         }
//     }
// }

// extension String {
//     subscript(_ range: CountableRange<Int>) -> String {
//         let start = index(startIndex, offsetBy: max(0, range.lowerBound))
//         let end = index(start, offsetBy: min(self.count - range.lowerBound,
//                                              range.upperBound - range.lowerBound))
//         return String(self[start..<end])
//     }
// }

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 || s.count == 1{
            return s
        }
        var res = ""
        var i = 0
        while i < s.count {
            print("iiiiiiiiiiii ----------  \(i)")
            let subStr1: String = self.palindrome(s, i, i)
            print("aaaaaaa-----\(subStr1)")
            let subStr2: String = self.palindrome(s, i, i + 1)
            print("ssssssssssss-----\(subStr2)")
            res = res.count > subStr1.count ? res : subStr1
            res = res.count > subStr2.count ? res : subStr2
            i += 1
        }
        return res
    }
    func palindrome(_ s: String ,_ l: Int, _ r: Int) -> String {
        var l1 = l
        var r1 = r
        // print("22222222----l=\(l1)")
        // print("22222222----r=\(r1)")
        // var p1 = s[s.s_index(l1)]
        // var p2 = s[s.s_index(r1)]

        while r1 < s.count && l1 >= 0 && s[s.s_index(l1)] == s[s.s_index(r1)] {
        //     print("333333333-------p1---\(s[s.s_index(l1)])")
        //    print("33333333-------p2---\(s[s.s_index(r1)])")

                 l1 -= 1
                 r1 += 1
          
        }
        print("44444444----l2=\(l1)")
        print("44444444----r2=\(r1)")
        // let p1 = s[s.s_index(l1)]
        // let p2 = s[s.s_index(r1-1)]
        // print("333333333-------p1---\(p1)")
        // print("22222222-------p1---\(p2)")
        
        
        // if l1 < 0 {
        //     l1 = 0
        // }
        
        // var endIn = s.s_index(r1)
        // if r1 >= s.count {
        //     endIn = s.endIndex
        // }
        
        // if r1 < s.count {
            // print("55555555------\(s[endIn])")
            
            return String(s[s.s_index(l1 + 1)..<s.s_index(r1)])
        // }
        // if l1 < r1 - 1{
        //     print("66666666")
        //     return String(s[s.s_index(l1)..<s.s_index(r1 - 1)])
        // }
        //  print("777777")
        // return String(s[s.s_index(l1)..<s.s_index(r1 - 2)])
    }
}
*/
    var solu = Solution()
    var str = "absbsbas"//"babad"//"cbbd"//"absbsbas"//"cbbd"//"babad" "bb"
    var rest = solu.longestPalindrome(str)
    print("absbsbas------------\(rest) ---- (absbsba)")

    var str1 = "babad"//"babad"//"cbbd"//"absbsbas"//"cbbd"//"babad" "bb"
    var rest2 = solu.longestPalindrome(str1)
    print("babad------------\(rest2) ---- (bab)")

    var str2 = "cbbd"//"babad"//"cbbd"//"absbsbas"//"cbbd"//"babad" "bb"
    var rest3 = solu.longestPalindrome(str2)
    print("cbbd------------\(rest3) ---- (bb)")

    var str3 = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"//"bb"//"babad"//"cbbd"//"absbsbas"//"cbbd"//"babad" "bb"
    var rest4 = solu.longestPalindrome(str3)
    print("bb------------\(rest4) ---- (bb)")

    
// @lc code=end




/*
extension String {
   func s_index(_ offset:Int) -> String.Index {
       if offset <= 0  {
        return self.startIndex
    }
    if offset >= self.count {
        return self.endIndex
    }
        return self.index(self.startIndex, offsetBy: offset)
    }
}

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 || s.count == 1{
            return s
        }
        var res = ""
        var i = 0
        while i < s.count {
            var subStr1: String = self.palindrome(s, i, i)
            var subStr2: String = self.palindrome(s, i, i + 1)
            res = res.count > subStr1.count ? res : subStr1
            res = res.count > subStr2.count ? res : subStr2
            i += 1
        }
        return res
    }
    func palindrome(_ s: String ,_ l: Int, _ r: Int) -> String {
        var l1 = l
        var r1 = r
        while r1 < s.count && l1 >= 0 && s[s.s_index(l1)] == s[s.s_index(r1)] {
            l1 -= 1
            r1 += 1
        }
        // if l1 + 1 < r1{
            return String(s[s.s_index(l1 + 1)..<s.s_index(r1)])
        // }
        // return String(s[s.s_index(l1)..<s.s_index(r1 - 1)])
    }
}


*/