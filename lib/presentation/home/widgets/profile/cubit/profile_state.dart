part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ResultState.initial()) ResultState<Login> updateProfileResult,
    @Default(ResultState.initial()) ResultState<dynamic> logoutResult,
    @Default(User()) User user,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String password,
    File? pickedImageFile,
  }) = _ProfileState;
}
