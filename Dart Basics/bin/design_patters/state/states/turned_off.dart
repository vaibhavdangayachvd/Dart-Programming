import '../computer.dart';
import '../interface/i_state.dart';

class TurnedOff implements IState {
  @override
  final Computer context;

  TurnedOff(this.context);

  @override
  void pressPowerButton() {
    context.state = context.turningOn;
    print('Turning on');
    context.state = context.turnedOn;
  }

  @override
  void shutDown() {
    print('Already shut down');
  }

  @override
  void turnOnPlug() {
    if (!context.plug) {
      context.switchPlug();
      print('Plug is on');
    } else {
      print('Plug is already on');
    }
  }

  @override
  void useComputer() {
    print('Cannot use');
  }
}
