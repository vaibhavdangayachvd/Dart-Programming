import 'package:freezed_annotation/freezed_annotation.dart';

import 'interface/pizza.dart';

class FarmHouse implements Pizza {
  @override
  final num cost;
  @override
  final String description;
  @override
  final Size size;

  const FarmHouse({
    @required this.cost,
    @required this.description,
    @required this.size,
  });
}
