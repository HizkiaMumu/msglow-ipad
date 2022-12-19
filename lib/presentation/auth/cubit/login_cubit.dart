import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/unions/result_state.dart';
import '../../../domain/entities/login/login.dart';
import '../../../domain/usecases/do_login_usecase.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final DoLoginUseCase _doLoginUseCase;

  LoginCubit(this._doLoginUseCase) : super(const LoginState());

  saveUsername(String? username) {
    emit(state.copyWith(username: username ?? ''));
  }

  savePassword(String? password) {
    emit(state.copyWith(password: password ?? ''));
  }

  doLogin() async {
    emit(state.copyWith(loginResultState: const ResultState.loading()));
    final _result = await _doLoginUseCase(
      DoLoginUseCaseParams(
        email: state.username,
        password: state.password,
      ),
    );

    _result.fold(
      (l) => emit(
        state.copyWith(
          loginResultState: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          loginResultState: ResultState.success(
            data: r,
          ),
        ),
      ),
    );
  }
}
