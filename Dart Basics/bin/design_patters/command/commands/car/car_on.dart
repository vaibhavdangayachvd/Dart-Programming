import '../../interface/command.dart';
import '../../items/car.dart';

class CarOn extends Command {
  final Car car;

  CarOn(this.car);

  @override
  void execute() {
    car.on();
  }

  @override
  void undo() {
    car.off();
  }
}
