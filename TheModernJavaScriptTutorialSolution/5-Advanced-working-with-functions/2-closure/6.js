function sum(a) {

  return function(b) {
    return a + b; // 从外部词法环境获得 "a"
  };

}