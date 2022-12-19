part of 'main_cubit.dart';

enum LoginStatus { loggedIn, notLoggedIn }

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(ResultState.initial()) ResultState<LoginStatus> checkLoginStatus,
  }) = _MainState;
}
