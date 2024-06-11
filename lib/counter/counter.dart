import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'count.dart';

part 'counter.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  Count build() {
    return Count.initialize();
  }

  void increment() {
    final oldNum = state;
    state = state.copyWith(num: oldNum.num + 1);
  }

}