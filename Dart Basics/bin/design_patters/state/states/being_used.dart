import '../computer.dart';
import '../interface/i_state.dart';

class BeingUsed implements IState {
  @override
  final Computer context;

  BeingUsed(this.context);

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
    print('Already using');
  }
}
