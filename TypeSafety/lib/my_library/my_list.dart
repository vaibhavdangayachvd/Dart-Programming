abstract class MyList<T> {
  const MyList._();

  factory MyList(List<T> list) {
    MyList<T> makeCons(int index) {
      if (index == list.length) {
        return Nil();
      }
      return Cons<T>(list[index], makeCons(index + 1));
    }

    return makeCons(0);
  }

  MyList<A> map<A>(A Function(T) f) {
    if (this is Nil) {
      return Nil();
    }
    final cons = this as Cons<T>;
    return Cons<A>(f(cons.head), cons.tail.map((f)));
  }

  A foldLeft<A>(A z, A Function(A, T) f) {
    if (this is Nil) {
      return z;
    }
    final cons = this as Cons<T>;
    return cons.tail.foldLeft(f(z, cons.head), f);
  }

  static MyList<T> concatenate<T>(MyList<MyList<T>> listOfList) {
    return listOfList._foldRightInTermsOfFoldLeft<MyList<T>>(
        Nil(), (curr, prev) => curr.append(prev));
  }

  A _foldLeftInTermsOfFoldRight<A>(A z, A Function(A, T) f) {
    return reverse().foldRight(z, (T a, A b) => f(b, a));
  }

  A _foldRightInTermsOfFoldLeft<A>(A z, A Function(T, A) f) {
    return reverse().foldLeft(z, (A b, T a) => f(a, b));
  }

  A foldRight<A>(A z, A Function(T, A) f) {
    if (this is Nil) {
      return z;
    }
    final cons = this as Cons<T>;
    return f(cons.head, foldRight(z, f));
  }

  MyList<T> reverse() {
    MyList<T> rev(MyList<T> current, MyList<T> reversed) {
      if (current is Nil) {
        return reversed;
      }
      final curr = current as Cons<T>;
      return rev(curr.tail, reversed.insert(0, curr.head));
    }

    return rev(this, MyList([]));
  }

  MyList<T> append(MyList<T> toAppend) {
    if (this is Nil) {
      return toAppend;
    }
    final curr = (this as Cons<T>);
    return Cons(curr.head, curr.tail.append(toAppend));
  }

  int length() {
    if (this is Nil) {
      return 0;
    }
    return 1 + (this as Cons<T>).tail.length();
  }

  MyList<T> filter(bool Function(T) f) {
    return _foldRightInTermsOfFoldLeft<MyList<T>>(
      Nil(),
      (curr, prev) => f(curr) ? prev.insert(0, curr) : prev,
    );
  }

  MyList<T> filterUsingFlatMap(bool Function(T) f) {
    return flatMap<T>((i) => f(i) ? <T>[i].toMyList() : <T>[].toMyList());
  }

  Iterable<T> iterate() sync* {
    if (this is Nil) {
      return;
    }
    if (this is Cons<T>) {
      final t = this as Cons<T>;
      yield t.head;
      yield* t.tail.iterate();
    }
  }

  List<T> toList() {
    return iterate().toList();
  }

  @override
  String toString() {
    return foldLeft<String>(
        '', (prev, current) => prev + current.toString() + ' ');
  }

  MyList<T> insert(int index, T element) {
    MyList<T> ins(int currentPos, MyList<T> curr) {
      if (currentPos == index) {
        return Cons<T>(element, curr);
      }
      if (curr is Nil && currentPos != index) {
        throw RangeError('Index is greater than the length');
      }
      final res = ins(
        currentPos + 1,
        curr is Nil ? Nil() : ((curr as Cons<T>).tail),
      );
      if (curr is Nil) {
        return res;
      }
      return Cons<T>((curr as Cons<T>).head, res);
    }

    return ins(0, this);
  }

  bool hasSubsequence(MyList<T> sub) {
    if (this is Nil) {
      return sub is Nil;
    }
    final cons = this as Cons<T>;
    return _checkSubsequence(sub) || cons.tail.hasSubsequence(sub);
  }

  bool _checkSubsequence(MyList<T> sub) {
    if (sub is Nil || this is Nil) {
      if (sub is! Nil) {
        return false;
      } else {
        return true;
      }
    }
    final cons1 = this as Cons<T>;
    final cons2 = sub as Cons<T>;
    return cons1.head == cons2.head && cons1.tail._checkSubsequence(cons2.tail);
  }

  MyList<A> flatMap<A>(MyList<A> Function(T) f) {
    if (this is Nil) {
      return Nil();
    }
    final cons = this as Cons<T>;
    return f(cons.head).append(cons.tail.flatMap(f));
  }

  MyList<T> zipWith(MyList<T> list2, T Function(T, T) f) {
    if (this is Nil || list2 is Nil) {
      if (this is! Nil) {
        return this;
      } else if (list2 is! Nil) {
        return list2;
      } else {
        return Nil();
      }
    } else {
      final cons1 = this as Cons<T>;
      final const2 = list2 as Cons<T>;
      return Cons<T>(
        f(cons1.head, const2.head),
        cons1.tail.zipWith(const2.tail, f),
      );
    }
  }
}

class Cons<T> extends MyList<T> {
  final T head;
  final MyList<T> tail;

  const Cons(this.head, this.tail) : super._();
}

class Nil<T> extends MyList<T> {
  const Nil() : super._();
}

extension MyListX<T> on List<T> {
  MyList<T> toMyList() {
    return MyList<T>(this);
  }
}
