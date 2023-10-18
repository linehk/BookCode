function filterRangeInPlace(arr, a, b) {
  for (let i = 0; i < arr.length; i++) {
    let val = arr[i];
    // 如果超出范围，则删除
    if (val < a || val > b) {
      arr.splice(i, 1);
      i--;
    }
  }

}