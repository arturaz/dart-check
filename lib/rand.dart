import 'dart:math';

import 'package:dartcheck/pair.dart';

/// Represents a random generator based on the Dart Random class
class Rand {
  final int _seed;

  // ignore: public_member_api_docs
  Rand({seed: 1}) : _seed = seed;

  /// Produces the next Random generator
  Rand next() => new Rand(seed: _nextValue());

  int _nextValue() => new Random(_seed).nextInt(2 ^ 53);

  /// Produces the state of this generator
  Pair<int, Rand> value() => new Pair(_seed, new Rand(seed: _nextValue()));
}
