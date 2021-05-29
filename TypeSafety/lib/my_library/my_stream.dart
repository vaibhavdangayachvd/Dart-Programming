import 'package:TypeSafety/my_library/my_list.dart' as my_list;
import 'package:TypeSafety/my_library/option.dart';

class UnsupportedOperationError extends Error {}

abstract class MyStream<T> {
  const MyStream._();

  factory MyStream(T Function() h, MyStream<T> Function() t) {
    late final head = h();
    late final tail = t();
    return Cons._(() => head, () => tail);
  }

  my_list.MyList<T> toMyList() {
    return fold<my_list.MyList<T>>(
      () => my_list.Nil(),
      (cons) => my_list.Cons(cons(), cons.tail().toMyList()),
    );
  }

  MyStream<T> takeN(int n) {
    if (n == 0) {
      return Empty();
    }
    return fold(
      () => Empty(),
      (cons) => MyStream<T>(cons.head, () => cons.tail().takeN(n - 1)),
    );
  }

  Option<T> headOption() {
    return rightFold(() => none(), (curr, prev) => some(curr));
  }

  MyStream<T> takeWhile(bool Function(T) f) {
    return rightFold(
      () => Empty(),
      (curr, prev) => f(curr) ? MyStream(() => curr, prev) : Empty(),
    );
  }

  MyStream<T> dropN(int n) {
    if (n == 0) {
      return this;
    } else {
      return fold(
        () => Empty(),
        (cons) => cons.tail().dropN(n - 1),
      );
    }
  }

  bool exist(bool Function(T) f) {
    return rightFold(() => false, (curr, prev) => f(curr) || prev());
  }

  A rightFold<A>(A Function() z, A Function(T, A Function()) f) {
    return fold(
      () => z(),
      (cons) => f(cons(), () => cons.tail().rightFold(z, f)),
    );
  }

  bool forAll(bool Function(T) f) {
    return rightFold(() => true, (curr, prev) => f(curr) && prev());
  }

  A fold<A>(A Function() empty, A Function(Cons<T>) cons) {
    if (this is Empty) {
      return empty();
    }
    if (this is Cons) {
      final currCon = this as Cons<T>;
      return cons(currCon);
    }
    throw UnsupportedOperationError();
  }

  static MyStream<T> fromList<T>(List<T> list) {
    MyStream<T> makeStream(int index) {
      if (index == list.length) {
        return Empty();
      } else {
        return MyStream(() => list[index], () => makeStream(++index));
      }
    }

    return makeStream(0);
  }

  static MyStream<T> fromMyList<T>(my_list.MyList<T> list) {
    if (list is my_list.Nil) {
      return Empty();
    }
    final cons = list as my_list.Cons<T>;
    return MyStream(() => cons.head, () => fromMyList(cons.tail));
  }
}

class Empty<T> extends MyStream<T> {
  const Empty() : super._();
}

class Cons<T> extends MyStream<T> {
  final T Function() head;
  final MyStream<T> Function() tail;

  T call() => head();

  const Cons._(this.head, this.tail) : super._();
}

extension MyStreamOnListX<T> on List<T> {
  MyStream<T> toMyStream() {
    return MyStream.fromList(this);
  }
}

extension MyStreamOnMyListX<T> on my_list.MyList<T> {
  MyStream<T> toMyStream() {
    return MyStream.fromMyList(this);
  }
}
