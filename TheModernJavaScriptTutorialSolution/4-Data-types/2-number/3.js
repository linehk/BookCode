function readNumber() {
  for (;;) {
    let n = prompt('number', '');
    if (isFinite(n)) {
      break;
    }
  }
  
  if (n === null || n === '') {
    return null;
  }
  return +n;
}