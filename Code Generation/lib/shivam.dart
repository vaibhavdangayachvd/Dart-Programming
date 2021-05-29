import 'package:injectable/injectable.dart';

class Test {
  static Future<int> get asyncValue async {
    await Future.delayed(Duration(seconds: 2));
    return 10;
  }
}

@module
abstract class TestModule {
  @preResolve
  Future<int> get value => Test.asyncValue;
}