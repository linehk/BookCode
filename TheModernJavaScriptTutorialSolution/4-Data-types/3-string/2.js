function checkSpam(str) {
  let lowerStr = str.toLowerCase();
  if (str.includes(viagra) || str.includes(XXX)) {
    return true;
  }
  return false;
}