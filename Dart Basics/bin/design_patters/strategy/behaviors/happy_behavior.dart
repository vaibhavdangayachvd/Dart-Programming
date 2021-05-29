abstract class HappyBehavior{
  void perform();
}
class VaibhavHappyBehavior implements HappyBehavior{
  const VaibhavHappyBehavior();
  @override
  void perform() {
    print('I need anything 😑');
  }
}
class HarshHappyBehavior implements HappyBehavior{
  const HarshHappyBehavior();
  @override
  void perform() {
    print('I need anything 😊');
  }
}