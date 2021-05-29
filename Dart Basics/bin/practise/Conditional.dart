main(){
  print(getName());
  var a;
}
String getName({String name})=>name ?? 'Guest';
//String getName([String name])=>name!=null?name:'Guest';