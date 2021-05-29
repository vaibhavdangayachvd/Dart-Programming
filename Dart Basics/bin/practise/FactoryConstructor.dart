class Vaibhav{
  static Vaibhav _ref;
  Vaibhav();
  factory Vaibhav.getInstance(){
    _ref??=Vaibhav();
    return _ref;
  }
}
main(){
  Vaibhav obj1=Vaibhav.getInstance();
  Vaibhav obj2=Vaibhav.getInstance();
  assert(obj1==obj2);
}