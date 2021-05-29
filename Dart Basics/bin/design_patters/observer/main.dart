import 'interface/observer.dart';
import 'interface/subject.dart';
import 'subject.dart';
import 'observers.dart';

void main() {
  Subject subject = NewSubject();
  Observer vaibhav = Vaibhav(subject);
  Observer harsh = Harsh(subject);
  subject.notifyObservers();
}
