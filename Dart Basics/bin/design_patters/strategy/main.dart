import 'behaviors/angry_behavior.dart';
import 'behaviors/happy_behavior.dart';
import 'behaviors/hungry_behavior.dart';
import 'person.dart';

void main() {
  final p1 = Random(
    angryBehavior: const VaibhavAngryBehavior(),
    happyBehavior: const HarshHappyBehavior(),
    hungryBehavior: const VaibhavHungryBehavior(),
  );
  p1.showName();
  p1.showAll();
}
