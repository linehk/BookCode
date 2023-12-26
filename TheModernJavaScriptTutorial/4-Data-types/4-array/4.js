function sumInput() {
  let arr = [];
  for (;;) {
    let n = prompt('n=', 0);
    if (n === '' || n === null || !isFinite(n)) {
      break;
    }
    arr.push(+n);
  }
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}