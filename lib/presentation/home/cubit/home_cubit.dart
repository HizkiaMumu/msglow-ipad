import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/home/nav_drawer_item.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  changeSelectedMenuItemIndex(NavDrawerItem item) {
    emit(state.copyWith(
      selectedMenuItemIndex: item.id,
    ));
  }
}
