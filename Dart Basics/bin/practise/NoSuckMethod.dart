abstract class Vaibhav{
  void say();
}
class Harsh extends Vaibhav{//can also implement
  void noSuchMethod(Invocation invocation){
    print('You tried to use a non-existent member: ' + '${invocation.memberName}');
  }
}
main(){
  var obj=Harsh();
  obj.say();
}