import 'commands/car/car_off.dart';
import 'items/car.dart';
import 'remote.dart';

void main() {
  final remote = Remote();
  final command1 = CarOn(Car());
  remote.setCommand(command1);
  remote.doIt();
}
