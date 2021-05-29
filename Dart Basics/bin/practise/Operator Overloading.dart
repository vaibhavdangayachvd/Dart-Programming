class Vaibhav {
  num a;

  Vaibhav(this.a);

  Vaibhav operator +(Vaibhav obj) => Vaibhav(this.a + obj.a);
}

main() {
  var obj1 = Vaibhav(1), obj2 = Vaibhav(3);
  print((obj1 + obj2).a);
}
