class Vaibhav {
  final int a;
  final Test b;

  const Vaibhav(this.a, this.b);
}

class Test {
  const Test();

  Test.test();
}

main() {
  var a = const Vaibhav(3, Test());
  var b;
  a = b ?? Vaibhav(2, Test());
  print(a?.a);
}
