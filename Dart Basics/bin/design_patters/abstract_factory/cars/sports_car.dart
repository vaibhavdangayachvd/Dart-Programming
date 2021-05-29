import '../interface/car.dart';
import '../interface/parts_factory.dart';

class SportsCar extends Car{
  SportsCar(PartsFactory factory) : super(factory);

  @override
  String get name => 'Sports Car';
}