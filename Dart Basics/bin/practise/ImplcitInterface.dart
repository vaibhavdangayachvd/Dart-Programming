class Super {
  int a = 10;
  int _aa = 20;

  void say() {
    print('_aa : $_aa | a : $a');
  }
}

class Sub implements Super {
  @override
  int _aa = 30;

  @override
  int a = 40;

  @override
  void say() {
    print('_aa : $_aa | a : $a');
  }
}

main() {
  var obj1 = Super(), obj2 = Sub();
  obj1.say();
  obj2.say();
}
