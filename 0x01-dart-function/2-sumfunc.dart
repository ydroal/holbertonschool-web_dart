int add(int a, int b) {
  return(a + b);
}

int sub(int a, int b) {
  return(a - b);
}

String showFunc(int a, int b) {
  var reslut_add = add(a, b);
  var result_sub = sub(a, b);
  return('Add $a + $b = $reslut_add\nSub $a - $b = $result_sub');
}