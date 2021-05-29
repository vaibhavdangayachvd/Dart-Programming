abstract class HungryBehavior {
  void perform();
}

class VaibhavHungryBehavior implements HungryBehavior {
  const VaibhavHungryBehavior();

  @override
  void perform() {
    print('I need food 😑');
  }
}

class HarshHungryBehavior implements HungryBehavior {
  const HarshHungryBehavior();

  @override
  void perform() {
    print('I need food 😊');
  }
}
