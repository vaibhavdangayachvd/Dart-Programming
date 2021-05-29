abstract class Super{
  void say(){
    print('I am super');
  }
  void lol(){
    print('I am lol');
  }
}
class Sub extends Super{
  @override
  void say() {
    print('I am sub');
  }
}
main(){
  Super obj=Sub();
  obj.say();
  obj.lol();
}