import '../interface/car.dart';
import '../interface/parts_factory.dart';

class NormalCar extends Car {
  NormalCar(PartsFactory factory) : super(factory);

  @override
  String get name => 'Normal Car';
}
