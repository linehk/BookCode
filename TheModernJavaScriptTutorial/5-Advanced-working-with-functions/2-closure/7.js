let x = 1;

function func() {
  console.log(x); // ?

  let x = 2;
}

func();

// error 虽然有变量，但是还未能使用