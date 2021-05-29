void main() {
  var vd = {
    'name': 'Vaibhav',
    'age': 22,
    'gender': 'male',
  };
  final vdp = vd['pref'] as Map<String, dynamic>;
  vdp?.forEach((key, value) {
    print(value);
  });
}
