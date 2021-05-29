import 'subject.dart';

abstract class Observer{
  Subject get subject;
  void perform();
}