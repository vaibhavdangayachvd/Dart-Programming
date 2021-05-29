import 'parts/engine.dart';
import 'parts/suspension.dart';
import 'parts/wheels.dart';
import 'parts_factory.dart';

abstract class Car {
  String get name;

  final PartsFactory factory;

  final Wheel wheel;

  final Suspension suspension;

  final Engine engine;

  Car(this.factory)
      : wheel = factory.createWheel(),
        suspension = factory.createSuspension(),
        engine = factory.createEngine();

  void showDescription() {
    print('Car Name : '+name);
    print('Engine : ' + engine.name);
    print('Wheel : ' + wheel.name);
    print('Suspension : ' + suspension.name);
  }
}
