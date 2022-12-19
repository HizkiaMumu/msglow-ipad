import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase/no_param.dart';
import '../../../../../core/unions/result_state.dart';
import '../../../../../domain/entities/login/login.dart';
import '../../../../../domain/entities/login/user.dart';
import '../../../../../domain/usecases/do_logout_usecase.dart';
import '../../../../../domain/usecases/get_user_usecase.dart';
import '../../../../../domain/usecases/update_profile_usecase.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final DoLogoutUseCase _doLogoutUseCase;
  final GetUserUseCase _getUserUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  ProfileCubit(
    this._doLogoutUseCase,
    this._getUserUseCase,
    this._updateProfileUseCase,
  ) : super(const ProfileState());

  doLogOut() async {
    emit(state.copyWith(logoutResult: const ResultState.loading()));

    final _result = await _doLogoutUseCase(const DoLogoutUseCaseParams());

    _result.fold(
      (l) => emit(
        state.copyWith(
          logoutResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          logoutResult: const ResultState.success(
            data: null,
          ),
        ),
      ),
    );
  }

  updateProfile() async {
    // Break the codes when no any user data changed
    if (state.name == state.user.name &&
        state.email == state.user.email &&
        state.phoneNumber == state.user.phoneNumber &&
        state.pickedImageFile == null) {
      return;
    }

    emit(state.copyWith(updateProfileResult: const ResultState.loading()));

    final _result = await _updateProfileUseCase(
      UpdateProfileUseCaseParams(
        name: state.name,
        email: state.email,
        phoneNumber: state.phoneNumber,
        password: state.password,
        imageFile: state.pickedImageFile,
      ),
    );

    _result.fold(
      (l) => emit(
        state.copyWith(
          updateProfileResult: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          updateProfileResult: ResultState.success(
            data: r,
          ),
          user: state.user.copyWith(
            name: r.user?.name ?? '',
            email: r.user?.email ?? '',
            phoneNumber: r.user?.phoneNumber ?? '',
          ),
          name: r.user?.name ?? '',
          email: r.user?.email ?? '',
          phoneNumber: r.user?.phoneNumber ?? '',
        ),
      ),
    );
  }

  getUser() {
    final _result = _getUserUseCase(const NoParam());
    if (_result == null) {
      emit(state.copyWith(user: const User()));
      return;
    }

    emit(
      state.copyWith(
        user: _result,
        name: _result.name ?? '',
        email: _result.email ?? '',
        phoneNumber: _result.phoneNumber ?? '',
      ),
    );
  }

  changeName(String? value) {
    emit(state.copyWith(name: value ?? ''));
  }

  changeEmail(String? value) {
    emit(state.copyWith(email: value ?? ''));
  }

  changePhoneNumber(String? value) {
    emit(state.copyWith(phoneNumber: value ?? ''));
  }

  changePassword(String? value) {
    emit(state.copyWith(password: value ?? ''));
  }

  savePickedImageFile(File pickedImageFile) {
    emit(state.copyWith(pickedImageFile: pickedImageFile));
  }
}
