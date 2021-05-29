abstract class Animal {
  void chase(Animal x) {
    print('Chasing animal');
  }
}

class Mouse extends Animal {
}
class Cat extends Animal {
  @override
  void chase(covariant Mouse x) {
    print('Chasing mouse');
  }
}
