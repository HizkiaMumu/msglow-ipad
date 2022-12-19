import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/theme_util.dart';
import '../../core/widgets/fade_indexed_stack.dart';
import 'cubit/home_cubit.dart';
import 'widgets/home_navigation_menu.dart';
import 'widgets/input_penjualan/input_penjualan_view.dart';
import 'widgets/penjualan/penjualan_view.dart';
import 'widgets/profile/profile_view.dart';
import 'widgets/transaction/transaction_view.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        // bottom: false,
        child: Row(
          children: [
            const HomeNavigationMenu(),
            Expanded(
              child: FadeIndexedStack(
                duration: ThemeUtil.shortAnimationDuration,
                index: context.select(
                    (HomeCubit element) => element.state.selectedMenuItemIndex),
                children: const [
                  PenjualanView(),
                  TransactionView(),
                  InputPenjualanView(),
                  ProfileView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
