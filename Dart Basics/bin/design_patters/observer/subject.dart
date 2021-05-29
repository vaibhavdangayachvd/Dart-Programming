import 'interface/observer.dart';
import 'interface/subject.dart';

class NewSubject implements Subject {
  @override
  final List<Observer> observers = [];

  @override
  void notifyObservers() {
    observers.forEach((element)=>element.perform());
  }

  @override
  void registerObserver(Observer observer) {
    assert(observer!=null);
    observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }
}
