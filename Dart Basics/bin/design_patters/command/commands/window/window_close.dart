import 'dart:html';

import '../../interface/command.dart';
import '../../items/window.dart';

class WindowCloseCommand implements Command {
  final Windows item;

  WindowCloseCommand(this.item);

  @override
  void execute() {
    item.close();
  }

  @override
  void undo() {
    item.open();
  }
}
