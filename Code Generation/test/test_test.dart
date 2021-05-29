import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class Vaibhav {
  int say() =>1;
}

class VaibhavMock extends Mock implements Vaibhav {}

void main() {
  final Vaibhav vaibhav = VaibhavMock();
  test('2', () {
    when(vaibhav.say()).thenReturn(1);
    vaibhav.say();
    vaibhav.say();
    verify(vaibhav.say());
    verifyNoMoreInteractions(vaibhav);
  });
  test('w',(){
    when(vaibhav.say()).thenReturn(1);
    vaibhav.say();
    verify(vaibhav.say()).called(1);
    verifyNoMoreInteractions(vaibhav);
  });
}
