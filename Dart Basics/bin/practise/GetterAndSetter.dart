import 'dart:math';
class Vaibhav{
  num radius;
  Vaibhav();
  Vaibhav.withRadius(this.radius);
  double get area=>radius!=null?22/7*pow(radius,2):0;
  set diameter(int value)=>radius=value/2;
  num get diameter=>radius*2;
}
main(){
  var obj=Vaibhav.withRadius(7);
  print('Initial Area : ${obj.area}');
  print('Initial Radius : ${obj.radius}\n');
  obj.diameter=10;
  print('New Radius : ${obj.radius}');
  print('New Area : ${obj.area}');
}