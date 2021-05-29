main(){
  var list1 = [1, 1.2, 3, 4, 2.3];
  var list2 = <num, String>{
    for (var i in list1) if (i is int) i: 'int' else i: 'double'
  };
  print(list2);
}