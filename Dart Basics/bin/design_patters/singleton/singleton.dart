class MySingleton {
  static MySingleton _instance;
  String name = 'Initial';

  MySingleton._();

  factory MySingleton() {
    _instance ??= MySingleton._();
    return _instance;
  }
}
