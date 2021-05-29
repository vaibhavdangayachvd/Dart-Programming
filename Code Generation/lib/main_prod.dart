import 'package:Code_Generation/harsh.dart';
import 'package:Code_Generation/injectible_config.dart';
import 'package:injectable/injectable.dart';

void main()async{
  await configureDependencies(Environment.prod);
  print(getIt<Harsh>().url);
}