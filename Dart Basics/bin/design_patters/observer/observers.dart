import 'interface/observer.dart';
import 'interface/subject.dart';

class Vaibhav implements Observer {
  Vaibhav(this.subject) {
    subject.registerObserver(this);
  }

  @override
  void perform() {
    print('I am Vaibhav');
  }

  @override
  final Subject subject;
}

class Harsh implements Observer {
  Harsh(this.subject) {
    subject.registerObserver(this);
  }

  @override
  void perform() {
    print('I am Harsh');
  }

  @override
  final Subject subject;
}
