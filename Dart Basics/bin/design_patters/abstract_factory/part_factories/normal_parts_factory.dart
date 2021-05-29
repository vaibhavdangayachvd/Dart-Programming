import '../interface/parts/engine.dart';
import '../interface/parts/suspension.dart';
import '../interface/parts/wheels.dart';
import '../interface/parts_factory.dart';
import '../parts/engine/normal_engine.dart';
import '../parts/suspension/normal_suspension.dart';
import '../parts/tyre/normal_tyre.dart';

class NormalPartFactory extends PartsFactory {
  @override
  Engine createEngine() {
    return NormalEngine();
  }

  @override
  Suspension createSuspension() {
    return NormalSuspension();
  }

  @override
  Wheel createWheel() {
    return NormalWheel();
  }
}
