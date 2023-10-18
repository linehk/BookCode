function f() {
  alert(this.name);
}

f = f.bind( {name: "John"} ).bind( {name: "Pete"} );

f(); // John

// 一个函数不能被重绑定（re-bound）。