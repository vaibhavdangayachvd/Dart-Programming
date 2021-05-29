import 'dart:async';
import 'dart:io';

import 'dart:isolate';

void main() async{
  var worker = Worker<int>();
  await worker.isIsolateReady;
  print(await worker.getNum(10));
  worker.dispose();
}

class Worker<T> {
  SendPort _sendPort;
  Isolate _isolate;
  final _isIsolateReady = Completer<void>();
  Completer<int> _num;

  Worker() {
    init();
  }

  Future<int> getNum(T n) async {
    _num = Completer<int>();
    _sendPort.send(n);
    final result = await _num.future;
    return result;
  }

  Future<void> get isIsolateReady => _isIsolateReady.future;

  void init() async {
    var receivePort = ReceivePort();
    receivePort.listen(_handelMessage);
    _isolate = await Isolate.spawn(_isolateEntry, receivePort.sendPort);
  }

  static void _isolateEntry<T>(dynamic message) {
    SendPort sendPort;
    var receivePort = ReceivePort();
    receivePort.listen((message) {
      assert(message is T);
      sleep(Duration(seconds: 2));
      sendPort.send(message);
    });
    if (message is SendPort) {
      sendPort = message;
      sendPort.send(receivePort.sendPort);
      return;
    }
  }

  void dispose() {
    _isolate.kill(priority: 0);
  }

  void _handelMessage(message) {
    if (message is SendPort) {
      _sendPort = message;
      _isIsolateReady.complete();
      return;
    } else {
      assert(message is T);
      _num.complete(message);
    }
  }
}
