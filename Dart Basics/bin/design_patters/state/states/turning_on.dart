import '../computer.dart';
import '../interface/i_state.dart';

class TurningOn implements IState{
  @override
  final Computer context;

  TurningOn(this.context);
  @override
  void pressPowerButton() {
  }

  @override
  void shutDown() {
  }

  @override
  void turnOnPlug() {
  }

  @override
  void useComputer() {
  }

}