main() {
  Map<String,int> map = const {'Vaibhav':1};
  map={"Vaibhav":12};
  if (map['Shivam'] == null) {
    map['Shivam'] = 3;
  }
  print(map.length);
}
