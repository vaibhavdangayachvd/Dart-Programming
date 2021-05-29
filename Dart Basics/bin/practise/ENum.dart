enum Days {monday,tuesday,wednesday,thursday,friday,saturday,sunday}
main(){
  var list=Days.values;
  list.forEach((value)=>print('${list.indexOf(value)+1} : ${value.toString()}'));
}