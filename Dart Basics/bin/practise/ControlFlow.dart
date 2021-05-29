main() {
  var callbacks = [];
  for (int i = 0; i < 10; ++i) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  var map = ['name', 'Vaibhav', 'age', 21];
  map.where((val) => val is int).forEach((val) => print(val));
  var test=1;
  switch(test){
    case 1:
      print('test');
      continue case2;
      case2:
      case 2:
      print('passed');
      break;
    default:
      print('default');
  }
}