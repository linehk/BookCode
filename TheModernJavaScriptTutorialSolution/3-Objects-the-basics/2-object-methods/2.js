let calculator = {
  x: 0,
  y: 0,
  read() {
    this.x = +prompt('x=', 0);
    this.y = +prompt('y=', 0);
  },
  sum() {
    return this.x + this.y;
  },
  mul() {
    return this.x * this.y;
  }
}