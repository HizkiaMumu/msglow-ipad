import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.initial() = Initial<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.success({required T data}) = Success<T>;

  const factory ResultState.error({required Failure failure}) = Error<T>;
}
