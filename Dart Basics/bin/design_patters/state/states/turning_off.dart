import '../computer.dart';
import '../interface/i_state.dart';

class TurningOff implements IState{
  @override
  final Computer context;

  TurningOff(this.context);
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