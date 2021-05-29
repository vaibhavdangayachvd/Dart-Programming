import '../computer.dart';

abstract class IState {
  Computer get context;

  void turnOnPlug();

  void pressPowerButton();

  void useComputer();

  void shutDown();
}
