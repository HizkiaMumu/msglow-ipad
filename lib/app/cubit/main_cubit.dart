import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/unions/result_state.dart';
import '../../domain/usecases/check_login_status_usecase.dart';

part 'main_cubit.freezed.dart';

part 'main_state.dart';

@injectable
class MainCubit extends Cubit<MainState> {
  final CheckLoginStatusUseCase _checkLoginStatusUseCase;

  MainCubit(this._checkLoginStatusUseCase) : super(const MainState());

  checkLoginStatus() async {
    emit(state.copyWith(checkLoginStatus: const ResultState.loading()));

    final _result =
        await _checkLoginStatusUseCase(const CheckLoginStatusUseCaseParams());

    _result.fold(
      (l) => emit(
        state.copyWith(
          checkLoginStatus: ResultState.error(
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          checkLoginStatus: ResultState.success(
            data: r,
          ),
        ),
      ),
    );
  }
}
