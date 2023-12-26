// 所以调用 arr[2] 函数也就是调用对象函数。
let arr = ["a", "b"];

arr.push(function() {
  alert( this );
})

arr[2](); // a,b,function(){...}