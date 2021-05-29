import 'interface/command.dart';

class Remote {
  Command command;

  void setCommand(Command command) {
    this.command = command;
  }

  void doIt() {
    command.execute();
  }
}
