class PriceNotImplementedException implements Exception {
  String message;

  PriceNotImplementedException([this.message]);

  @override
  String toString() {
    if (message == null) return 'Exception';
    return 'Exception: $message';
  }
}