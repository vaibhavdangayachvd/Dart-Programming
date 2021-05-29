import 'observer.dart';

abstract class Subject {
  List<Observer> get observers;

  void registerObserver(Observer observer);

  void removeObserver(Observer observer);

  void notifyObservers();
}
