import 'package:freezed_annotation/freezed_annotation.dart';

class MenuItem {
  final String name;
  final String description;
  final bool isVegetarian;
  final num price;

  MenuItem({
    @required this.name,
    @required this.description,
    @required this.isVegetarian,
    @required this.price,
  });
}
