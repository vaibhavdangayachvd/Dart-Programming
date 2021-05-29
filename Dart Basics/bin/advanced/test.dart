import 'dart:convert';

main() async {
  var json = jsonEncode(Vaibhav('Vaibhav', 22));
  print(json);
  final res = jsonDecode(json);
  var test = Vaibhav.fromJson(res);
  print(test.name);
}
class Vaibhav {
  final String name;
  final int age;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Vaibhav.fromJson(Map<String, dynamic> json) {
    return Vaibhav(json['name'], json['age']);
  }

  const Vaibhav(this.name, this.age);
}
