import 'package:injectable/injectable.dart';

@module
abstract class MyModule {
  @LazySingleton(as: Vaibhav)
  @prod
  VaibhavImplDev get vaibhavDev => VaibhavImplDev();

  @LazySingleton(as: Vaibhav)
  @dev
  VaibhavImplProd get vaibhavProd => VaibhavImplProd();
}
abstract class Vaibhav {}

class VaibhavImplProd implements Vaibhav {
  int a = 0;
  int b = 0;
}

class VaibhavImplDev implements Vaibhav {
  int a = 10;
  int b = 10;
}
