class Harsh{
}
mixin Talent on Harsh{
  static const a=10;
  bool canPlay=true;
  bool canCode=true;
  bool canDance=false;
  void say(){
    print('Can play : $canPlay\nCan Code : $canCode\nCan Dance : $canDance');
  }
}
mixin Lol on Harsh{
  static const a=10;
  bool canPlay=true;
  bool canCode=true;
  bool canDance=false;
  void say(){
    print('Can play : $canPlay\nCan Code : $canCode\nCan Dance : $canDance');
  }
}
//Have to extent harsh because mixin is on harsh
//Last specified mixin implementation is used in case of multiple implementations so no ambiguity
class Vaibhav extends Harsh with Talent,Lol{
}
main(){
  var obj=Vaibhav();
  obj.say();
}