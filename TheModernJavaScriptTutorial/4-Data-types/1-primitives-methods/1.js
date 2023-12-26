let str = "Hello";

str.test = 5; // (*)

alert(str.test);

// undefined（非严格模式）
// 报错（严格模式）。原始类型不是对象。它们不能存储额外的数据。