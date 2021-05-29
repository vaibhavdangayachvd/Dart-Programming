main(){
  const double a=10;
  int num=int.parse('121');
  const String name='Vaibhav $a Dangayach';
  assert('Vaibhav'.toLowerCase()=="vaibhav".toLowerCase());
  print("Vaibhav"+" "+'$a'+"Harsh\n");
  String n =r'Vaibhav is "" \n $a #abjhaw ';
  print(n);
  var test1=0/0,test2=1/0,test3=0/1,test4=-1;
  assert(test1.isNaN && test2.isInfinite && test3.isFinite && test4.isNegative);
}