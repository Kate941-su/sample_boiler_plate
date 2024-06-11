import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.freezed.dart';


@freezed
class Count with _$Count {
  const factory Count({
    required int num,
  }) = _Count;

  factory Count.initialize() => const Count(num: 0);
}