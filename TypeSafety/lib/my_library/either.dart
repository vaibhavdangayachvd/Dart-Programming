class UnsupportedOperationError extends Error {}

Either<Exception, R> Try<R>(R Function() f) {
  try {
    return Right(f());
  } on Exception catch (e) {
    return Left(e);
  }
}

abstract class Either<L, R> {
  const Either._();

  T fold<T>(T Function(L) left, T Function(R) right) {
    if (this is Left) {
      return left((this as Left<L>)());
    }
    if (this is Right) {
      return right((this as Right<R>)());
    }
    throw UnsupportedOperationError();
  }

  Either<L, A> flatMap<A>(Either<L, A> Function(R) f) {
    return fold(
      (left) => Left(left),
      (right) => f(right),
    );
  }

  Either<L, R> orElse(Either<L, R> alternative) {
    return fold(
      (left) => alternative,
      (right) => this,
    );
  }

  Either<L, C> map2<B, C>(Either<L, B> b, C Function(R, B) f) =>
      flatMap((r) => b.map<C>((b) => f(r, b)));

  Either<L, A> map<A>(A Function(R) f) {
    return fold(
      (left) => Left(left),
      (right) => Right(f(right)),
    );
  }
}

class Left<L> extends Either<L, Never> {
  final L value;

  const Left(this.value) : super._();

  L call() => value;
}

class Right<R> extends Either<Never, R> {
  final R value;

  const Right(this.value) : super._();

  R call() => value;
}
