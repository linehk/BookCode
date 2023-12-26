class Rabbit extends Object {
  constructor(name) {
    super(); // 需要在继承时调用父类的 constructor
    this.name = name;
  }
}

let rabbit = new Rabbit("Rab");

alert( rabbit.hasOwnProperty('name') ); // true