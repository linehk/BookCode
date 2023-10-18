let dictionary = Object.create(null, {
  toString: { // 定义 toString 属性
    value() { // value 是一个 function
      return Object.keys(this).join();
    }
  }
});

dictionary.apple = "Apple";
dictionary.__proto__ = "test";

// apple 和 __proto__ 在循环中
for(let key in dictionary) {
  alert(key); // "apple"，然后是 "__proto__"
}

// 通过 toString 处理获得的以逗号分隔的属性列表
alert(dictionary); // "apple,__proto__"