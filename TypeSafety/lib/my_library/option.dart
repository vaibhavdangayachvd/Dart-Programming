import 'package:TypeSafety/my_library/my_list.dart';

class UnsupportedOperationError extends Error {}

Option<T> Try<T>(T Function() a) {
  try {
    return Some(a());
  } catch (_) {
    return None();
  }
}

class Option<T> {
  A fold<A>(A Function(T) some, A Function() none) {
    if (this is Some) {
      return some((this as Some)());
    }
    if (this is None) {
      return none();
    }
    throw UnsupportedOperationError();
  }

  Option<A> flatMap<A>(Option<A> Function(T) f) {
    return fold(
      (value) => f(value),
      () => None<A>(),
    );
  }

  Option<A> map<A>(A Function(T) f) {
    return flatMap((value) => Try(() => f(value)));
  }

  Option<B> map2<A, B>(Option<A> a, B Function(T, A) f) {
    return flatMap<B>((value1) => a.map<B>((value2) => f(value1, value2)));
  }

  Option<C> map3<A, B, C>(Option<A> a, Option<B> b, C Function(T, A, B) f) {
    return flatMap<C>((valueT) =>
        a.flatMap((valueA) => b.map((valueB) => f(valueT, valueA, valueB))));
  }

  Option<D> map4<A, B, C, D>(
      Option<A> a, Option<B> b, Option<C> c, D Function(T, A, B, C) f) {
    return flatMap<D>(
      (valueT) => a.flatMap(
        (valueA) => b.flatMap(
          (valueB) => c.map(
            (valueC) => f(valueT, valueA, valueB, valueC),
          ),
        ),
      ),
    );
  }

  static Option<MyList<A>> sequence<A>(MyList<Option<A>> a) {
    if (a is Nil) {
      return Some(Nil());
    }
    final cons = a as Cons<Option<A>>;
    return cons.head.flatMap<MyList<A>>(
      (value) => sequence(cons.tail).map(
        (valueNew) => Cons(value, valueNew),
      ),
    );
  }

  static Option<B> Function(Option<A>) lift<B, A>(B Function(A) f) =>
      (Option<A> a) => a.flatMap((value) => Try(() => f(value)));

  static Option<C> Function(Option<A>, Option<B>) lift2<C, A, B>(
          C Function(A, B) f) =>
      (Option<A> a, Option<B> b) => a.map2(b, f);

  static Option<D> Function(Option<A>, Option<B>, Option<C>) lift3<D, A, B, C>(
          D Function(A, B, C) f) =>
      (Option<A> a, Option<B> b, Option<C> c) => a.map3(b, c, f);

  static Option<E> Function(Option<A>, Option<B>, Option<C>, Option<D>)
      lift4<E, A, B, C, D>(E Function(A, B, C, D) f) =>
          (Option<A> a, Option<B> b, Option<C> c, Option<D> d) =>
              a.map4(b, c, d, f);

  Option<T> filter(bool Function(T) f) {
    return fold(
      (value) => f(value) ? Some(value) : None(),
      () => None(),
    );
  }

  T getOrElse(T val) => fold((value) => value, () => val);

  Option<T> orElse(Option<T> alternative) {
    return fold(
      (value) => this,
      () => alternative,
    );
  }

  const Option._();
}

Option<T> some<T>(T a) {
  return Some(a);
}

Option<T> none<T>() {
  return None<T>();
}

class Some<T> extends Option<T> {
  final T _value;

  const Some(this._value) : super._();

  T call() => _value;
}

class None<T> extends Option<T> {
  const None() : super._();
}
