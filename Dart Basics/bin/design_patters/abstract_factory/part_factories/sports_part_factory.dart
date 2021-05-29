import '../interface/parts/engine.dart';
import '../interface/parts/suspension.dart';
import '../interface/parts/wheels.dart';
import '../interface/parts_factory.dart';
import '../parts/engine/sports_engine.dart';
import '../parts/suspension/sports_suspention.dart';
import '../parts/tyre/sports_tyre.dart';

class SportsPartFactory extends PartsFactory {
  @override
  Engine createEngine() {
    return SportsEngine();
  }

  @override
  Suspension createSuspension() {
    return SportsSuspension();
  }

  @override
  Wheel createWheel() {
    return SportsWheel();
  }
}
