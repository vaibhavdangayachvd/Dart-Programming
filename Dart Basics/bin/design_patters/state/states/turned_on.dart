import '../computer.dart';
import '../interface/i_state.dart';

class TurnedOn implements IState{
  @override
  final Computer context;

  TurnedOn(this.context);
  @override
  void pressPowerButton() {
    context.state = context.turningOff;
    print('Shutting Down');
  }

  @override
  void shutDown() {
    context.state = context.turningOff;
    print('Shutting Down');
  }

  @override
  void turnOnPlug() {
    print('Already on');
  }

  @override
  void useComputer() {
    context.state = context.beingUsed;
    print('Using Computer');
  }

}