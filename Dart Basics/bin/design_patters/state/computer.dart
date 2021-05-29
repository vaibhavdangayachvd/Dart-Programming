import 'interface/i_state.dart';
import 'states/being_used.dart';
import 'states/turned_off.dart';
import 'states/turned_on.dart';
import 'states/turning_off.dart';
import 'states/turning_on.dart';

class Computer {
  TurnedOff _turnedOff;
  TurnedOn _turnedOn;
  BeingUsed _beingUsed;
  TurningOn _turningOn;
  TurningOff _turningOff;
  bool _plug = false;

  bool get plug => _plug;

  void switchPlug() {
    _plug = !_plug;
  }

  IState _state;

  IState get turnedOf => _turnedOff;

  IState get turnedOn => _turnedOn;

  IState get beingUsed => _beingUsed;

  IState get turningOn => _turningOn;

  IState get turningOff => _turningOff;

  set state(IState state) => _state = state;

  Computer() {
    _turningOff = TurningOff(this);
    _turnedOn = TurnedOn(this);
    _beingUsed = BeingUsed(this);
    _turnedOff = TurnedOff(this);
    _turningOn = TurningOn(this);
    _state = _turnedOff;
  }

  void turnOnPlug() {
    _state.turnOnPlug();
  }

  void pressPowerButton() {
    _state.pressPowerButton();
  }

  void useComputer() {
    _state.useComputer();
  }

  void shutDown() {
    _state.shutDown();
  }
}
