main(){
  var clapping='\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());
  var input=Runes('\u1234 ha bro');
  print(String.fromCharCodes(input));
  var name='Vaibhav';
  print(String.fromCharCodes(name.runes));
  var toReverse='Vaibhav is my name';
  print(toReverse.split(' ').reversed.join(' '));
  print(String.fromCharCodes(getCharCodes()));
  print(String.fromCharCodes((toReverse.runes.toList().reversed)));
}

Iterable<int> getCharCodes()sync*{
  var list=<int>[97,97,97,97,97];
  for(var i=0;i<list.length;++i) {
    yield list[i];
  }
}