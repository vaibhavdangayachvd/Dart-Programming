abstract class AngryBehavior {
  void perform();
}

class VaibhavAngryBehavior implements AngryBehavior {
  const VaibhavAngryBehavior();
  @override
  void perform() {
    print('I need nothing when I am angry 😑');
  }
}

class HarshAngryBehavior implements AngryBehavior {
  const HarshAngryBehavior();
  @override
  void perform() {
    print('I need nothing when I am angry 😊');
  }
}
