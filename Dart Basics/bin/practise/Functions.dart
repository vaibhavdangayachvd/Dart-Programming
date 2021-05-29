import 'package:meta/meta.dart';
main(){
  print(sum(2,b:10));
  print(say('Vaibhav','Dangayach'));
}
int sum(int x,{int a=0,@required int b}) => a+b+x;
String say(String firstname,String lastname,[String middlename]){
  String result='Fullname : $firstname';
  if(middlename!=null){
    result+=' $middlename';
  }
  result+=' $lastname';
  return result;
}
// Pass printElement as a parameter.
