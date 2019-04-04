class Node<T>{
  var value : T
  var next : Node?
  init(value : T, next : Node? = nil) {
    self.value = value
    self.next = next
  }
}

var a = Node(value: 1)
var b = Node(value: 2, next: a)
var c = Node(value: 3, next: b)
var d = Node(value: 4, next: c)

func count(head : Node<Int>?)->Int{
  var count = 0
  var current = head
  print("count :\(count) and value : \(String(describing: current?.value))")
  if current == nil {
    return count
  }
  while current != nil {
    current = current?.next
    count += 1
    print("count :\(count) and value : \(String(describing: current?.value))")
  }
  return count
}

//count(head: d)

func reverse(head : Node<Int>?){
  var current = head
  if current == nil {
    return
  }
  var previous : Node<Int>?
  var ahead = current
  while current != nil {
    ahead = ahead?.next
    current?.next = previous
    previous = current
    current = ahead
  }
}

reverse(head: d)
count(head: a)

