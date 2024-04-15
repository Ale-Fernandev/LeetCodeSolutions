import UIKit

// How to initialize a class that creates a List of Nodes

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

//How to initialize a List of Nodes

let node1 = ListNode(2)
let node2 = ListNode(4)
let node3 = ListNode(3)

let node6 = ListNode(5)
let node7 = ListNode(6)
let node8 = ListNode(4)

let l1 = node1
node1.next = node2
node2.next = node3

let l2 = node6
node6.next = node7
node7.next = node8
//
//// How to store a LinkedList in an array
//
//func storeNode(node: ListNode?) -> [Int] {
//    var numbers: [Int] = []
//    var current_node = node
//    while let node = current_node {
//        numbers.append(node.val)
//        current_node = node.next
//    }
//    return numbers
//}
//var listOne = storeNode(node: l1)
//print(listOne)
//var listTwo = storeNode(node: l2)
//print(listTwo)

//// How to reverse a LinkedList
//
//func reversedList(_ head: ListNode?) -> ListNode? {
//    var previous: ListNode? = nil
//    var currentN = head
//    while currentN != nil {
//        let nextTemp = currentN?.next  // Assigns nextTemp with listNode position 2
//        currentN?.next = previous      // Assigns currentN with nil, indicating end of list
//        previous = currentN            // Assigns previous with the last element
//        currentN = nextTemp            // assigns current, to position 2 ( stored )
//    }
//    return previous
//}
//
//let reversedL1 = reversedList(l1)
//let reversedL2 = reversedList(l2)



// Recursion solution I looked up because I couldn't figure it out.
var carry = 0

func addTwoNumbers (_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil && l2 == nil && carry == 0 { return nil }
    let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
    print("This is sum after l1 + l2 + carry \(sum)")
    carry = sum / 10
    print("This is carry after carry = sum / 10 \(carry)")
    return .init(sum % 10, addTwoNumbers(l1?.next, l2?.next))
}

// I use modulo to always return single digit integers, and I recursively call my function with the value of the next node until both lists are nil and carry holds nothing

// dividing sum by 10 and assigning it to carry is how i make certain
// that i can carry the 2nd digit if the value is a 2 digit number.

// l1?.val ?? 0 states to grab the integer value from list1 if there is any, if not possible make it 0

addTwoNumbers(l1, l2)

