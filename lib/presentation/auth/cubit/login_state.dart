part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
    @Default(ResultState.initial()) ResultState<Login> loginResultState,
  }) = _LoginState;
}
