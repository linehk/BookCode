let list = {
  value: 1,
  next: {
    value: 2,
    next: {
      value: 3,
      next: {
        value: 4,
        next: null
      }
    }
  }
};

function printList(list) {

  alert(list.value); // 输出当前元素

  if (list.next) {
    printList(list.next); // 链表中其余部分同理
  }

}