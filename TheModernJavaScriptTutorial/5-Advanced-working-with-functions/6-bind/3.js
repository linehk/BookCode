function sayHi() {
  alert( this.name );
}
sayHi.test = 5;

let bound = sayHi.bind({
  name: "John"
});

alert( bound.test ); // 输出将会是什么？为什么？

// 答案：undefined。

// bind 的结果是另一个对象。它并没有 test 属性。