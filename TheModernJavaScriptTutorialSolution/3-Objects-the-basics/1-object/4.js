function multiplyNumeric(obj) {
  for (let key in obj) {
    if (typeof obj[key] != "number") {
      continue
    }
    obj[key] *= 2;
  }
}