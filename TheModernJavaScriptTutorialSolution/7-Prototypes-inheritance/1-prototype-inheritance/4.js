let hamster = {
  stomach: [],

  eat(food) {
    this.stomach.push(food);
  }
};

let speedy = {
  __proto__: hamster,
  stomach: []
};

let lazy = {
  __proto__: hamster,
  stomach: []
};

// 仓鼠 Speedy 找到了食物
speedy.eat("apple");
alert( speedy.stomach ); // apple

// 仓鼠 Lazy 的胃是空的
alert( lazy.stomach ); // <nothing>