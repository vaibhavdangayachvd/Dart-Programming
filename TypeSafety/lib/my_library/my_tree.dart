import 'dart:math' as math;

import 'package:TypeSafety/my_library/my_list.dart';

class UnsupportedOperationError extends Error {}

class EmptyTreeError extends Error {}

abstract class MyTree<T extends num> {
  const MyTree._();

  int countInTermsOfFold() {
    return fold<int>(
      0,
      (prev, _) => prev + 1,
      (left, right) => left + right,
    );
  }

  int count() {
    return when<int>(
      branch: (branch) {
        return 1 + branch.left.count() + branch.right.count();
      },
      nil: (nil) {
        return 0;
      },
      leaf: (leaf) {
        return 1;
      },
    );
  }

  int depthInTermsOfFold() {
    return fold<int>(
      0,
      (prev, _) => prev + 1,
      (left, right) => math.max(left, right),
    );
  }

  int depth() {
    return when<int>(branch: (e) {
      final left = e.left.depth();
      final right = e.right.depth();
      return 1 + math.max(left, right);
    }, leaf: (e) {
      return 1;
    }, nil: (e) {
      throw EmptyTreeError();
    });
  }

  A fold<A>(A z, A Function(A, T) f, A Function(A, A) join) {
    return when<A>(
      branch: (e) {
        final left = e.left.fold(z, f, join);
        final right = e.right.fold(z, f, join);
        return f(join(left, right), e.value);
      },
      nil: (e) => z,
      leaf: (e) => f(z, e.value),
    );
  }

  T maxInTermsOfFold() {
    return when<T>(
      branch: (branch) {
        return fold<T>(
          branch.value,
          (prev, curr) => math.max(prev, curr),
          (left, right) => math.max(left, right),
        );
      },
      nil: (nil) {
        throw EmptyTreeError();
      },
      leaf: (leaf) {
        return fold<T>(
          leaf.value,
          (prev, curr) => math.max(prev, curr),
          (left, right) => math.max(left, right),
        );
      },
    );
  }

  T max() {
    return when<T>(
      branch: (branch) {
        return math.max(
            branch.value, math.max(branch.left.max(), branch.right.max()));
      },
      nil: (nil) {
        throw EmptyTreeError();
      },
      leaf: (leaf) {
        return leaf.value;
      },
    );
  }

  void preOrder(void Function(T) f) {
    return when(
      branch: (e) {
        f(e.value);
        e.left.preOrder(f);
        e.right.preOrder(f);
      },
      nil: (_) => throw EmptyTreeError(),
      leaf: (e) => f(e.value),
    );
  }

  void inOrder(void Function(T) f) {
    return when(
      branch: (e) {
        e.left.inOrder(f);
        f(e.value);
        e.right.inOrder(f);
      },
      nil: (_) => throw EmptyTreeError(),
      leaf: (e) => f(e.value),
    );
  }

  void postOrder(void Function(T) f) {
    return when(
      branch: (e) {
        e.left.postOrder(f);
        e.right.postOrder(f);
        f(e.value);
      },
      nil: (_) => throw EmptyTreeError(),
      leaf: (e) => f(e.value),
    );
  }

  MyTree<A> map<A extends num>(A Function(T) f) {
    return when<MyTree<A>>(
      branch: (e) => Branch(f(e.value), e.left.map<A>(f), e.right.map<A>(f)),
      nil: (e) => Nil<A>(),
      leaf: (e) => Leaf<A>(f(e.value)),
    );
  }

  A when<A>({
    required A Function(Branch<T>) branch,
    required A Function(Nil<T>) nil,
    required A Function(Leaf<T>) leaf,
  }) {
    if (this is Branch<T>) {
      return branch(this as Branch<T>);
    }
    if (this is Leaf<T>) {
      return leaf(this as Leaf<T>);
    }
    if (this is Nil<T>) {
      return nil(this as Nil<T>);
    }
    throw UnsupportedOperationError;
  }

  A maybeWhen<A>({
    A Function(Branch<T>)? branch,
    A Function(Nil<T>)? nil,
    A Function(Leaf<T>)? leaf,
    required A Function() orElse,
  }) {
    return when(
      branch: branch ?? (_) => orElse(),
      nil: nil ?? (_) => orElse(),
      leaf: (_) => orElse(),
    );
  }
}

class Branch<T extends num> extends MyTree<T> {
  final MyTree<T> left;
  final MyTree<T> right;
  final T value;

  const Branch(this.value, this.left, this.right) : super._();
}

class Nil<T extends num> extends MyTree<T> {
  const Nil() : super._();
}

class Leaf<T extends num> extends MyTree<T> {
  final T value;

  const Leaf(this.value) : super._();
}
