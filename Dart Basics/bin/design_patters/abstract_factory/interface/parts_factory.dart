import 'parts/engine.dart';
import 'parts/suspension.dart';
import 'parts/wheels.dart';

abstract class PartsFactory {
  Wheel createWheel();

  Engine createEngine();

  Suspension createSuspension();
}
