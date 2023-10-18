function getSecondsToday() {
  let now = new Date();

  // 使用当前的 day/month/year 创建一个对象
  let today = new Date(now.getFullYear(), now.getMonth(), now.getDate());

  let diff = now - today; // ms difference
  return Math.round(diff / 1000); // make seconds
}