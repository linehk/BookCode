function pow(x, n) {
  if (n < 1) {
    return null
  }
  let r = x;
  for (let i = 1; i < n; i++) {
    r *= x;
  }
  return r
}