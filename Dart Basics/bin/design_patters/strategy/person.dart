import 'package:freezed_annotation/freezed_annotation.dart';

import 'behaviors/angry_behavior.dart';
import 'behaviors/happy_behavior.dart';
import 'behaviors/hungry_behavior.dart';

abstract class Person {
  final AngryBehavior angryBehavior;
  final HungryBehavior hungryBehavior;
  final HappyBehavior happyBehavior;

  const Person._({
    @required this.angryBehavior,
    @required this.hungryBehavior,
    @required this.happyBehavior,
  });

  void showAll() {
    angryBehavior.perform();
    happyBehavior.perform();
    hungryBehavior.perform();
  }

  void showName();
}

class Random extends Person {
  Random({
    @required AngryBehavior angryBehavior,
    @required HungryBehavior hungryBehavior,
    @required HappyBehavior happyBehavior,
  }) : super._(
          hungryBehavior: hungryBehavior,
          angryBehavior: angryBehavior,
          happyBehavior: happyBehavior,
        );

  @override
  void showName() {
    print('My name is R1');
  }
}
