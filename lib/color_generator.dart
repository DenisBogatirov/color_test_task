import 'dart:math' show Random;

import 'package:flutter/material.dart';

/// Generator for random color
class ColorGenerator {
  final Random _random;
  final _opaquePrefix = 0xFF000000;
  final _maxColorHex = 0xFFFFFF;

  /// Creates instance of ColorGenerator
  /// The optional parameter [seed] is used to initialize the
  /// Random internal state
  ColorGenerator([int? seed]) : _random = Random(seed);

  /// Generates random opaque color
  Color next() => Color(_opaquePrefix + _random.nextInt(_maxColorHex));
}
