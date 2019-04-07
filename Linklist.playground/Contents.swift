class Node<T>{
  
  var value : T
  var next : Node?
  init(_ value : T, _ next : Node? = nil) {
    self.value = value
    self.next = next
  }
  
}

class LinkedList<T>{
  
  var head : Node<T>?
  
  func count()->Int{
    var count = 0
    var current = head
    if current == nil {
      return count
    }
    while current != nil {
      current = current?.next
      count += 1
    }
    return count
  }
  
  func reverse(head : Node<T>?){
    var current = head
    if current == nil {
      return
    }
    var previous : Node<T>?
    var ahead = current
    while current != nil {
      ahead = ahead?.next
      current?.next = previous
      previous = current
      current = ahead
    }
    head = previous
  }
  
  func appendAtFirst(_ value : T ){
    let temp = Node(value)
    temp.next = head
    head = temp
  }
  
  func appendAtLast(_ value : T){
    var current = head
    let temp = Node(value)
    if current == nil {
      current = temp
      return
    }
    while current?.next != nil {
      current = current?.next
    }
    current?.next = temp
  }
  
  func appendAtIndex(_ value : T, index : Int){
    var current = head
    var previous = current
    
    let temp = Node(value)
    for i in 0...index {
      if i == index {
        temp.next = current
        previous?.next = temp
        break
      }
      if current == nil {
        break
      }
      previous = current
      current = current?.next
    }
  }
  func removeFirst(){
    let temp = head
    head = head?.next
    temp?.next = nil
  }
  
  func removeLast(){
    var current = head
    var previous = head
    while current?.next != nil {
      previous = current
      current = current?.next
    }
    previous?.next = nil
  }
  
  func removeAtIndex(_ index :Int){
    var current = head
    var previous = head
    for i in 0...index {
      if i == index {
        previous?.next = current?.next
        current?.next = nil
        break
      }
      previous = current
      current = current?.next
    }
  }
  
  func printList(){
    var current = head
    while current != nil {
      print("\(String(describing: current?.value))->")
      current = current?.next
    }
  }
}
var a = Node(1)
var b = Node(2,a)
var c = Node(3,b)
var d = Node(4,c)

var list = LinkedList<Int>()
list.appendAtLast(1)
list.printList()
