import 'package:injectable/injectable.dart';

@module
abstract class HarshModule {
  @Named('url')
  @dev
  String get urlDev => 'devUrl';

  @prod
  @Named('url')
  String get urlProd => 'prodUrl';
}

abstract class Harsh {
  final String url;

  Harsh(this.url);
}

@LazySingleton(as: Harsh)
class HarshImpl implements Harsh {
  @override
  final String url;

  HarshImpl(@Named('url') this.url);
}
