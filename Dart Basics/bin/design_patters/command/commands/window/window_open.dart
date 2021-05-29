import '../../interface/command.dart';
import '../../items/window.dart';

class WindowOpenCommand implements Command {
  final Windows item;

  WindowOpenCommand(this.item);

  @override
  void execute() {
    item.open();
  }

  @override
  void undo() {
    item.close();
  }
}
