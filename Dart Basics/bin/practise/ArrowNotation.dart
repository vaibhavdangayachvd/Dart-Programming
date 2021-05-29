main(){
  var loudify=(a)=>'!!${a.toString().toUpperCase()}';
  print(loudify('vaibhav'));
  var fruits=['apple','banana','mangoe'];
  fruits.forEach((item)=>print('${fruits.indexOf(item)+1} - $item'));
}