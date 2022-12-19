import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/strings.dart';
import '../../../core/extensions/snackbar_ext.dart';
import '../../../core/style/sizes.dart';
import '../../../core/unions/failure.dart';
import '../../../core/utils/get_util.dart';
import '../../../core/utils/navigation_util.dart';
import '../../../core/widgets/loading_dialog.dart';
import '../../../core/widgets/primary_button.dart';
import '../../home/home_page.dart';
import '../cubit/login_cubit.dart';
import 'login_form.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          previous.loginResultState != current.loginResultState,
      listener: (context, state) {
        state.loginResultState.maybeWhen(
          loading: () async => await GetUtil.showDialog(
            const LoadingDialog(),
          ),
          success: (data) async {
            GetUtil.dismissDialog();
            await NavigationUtil.pushReplacementNamed(HomePage.routeName);
          },
          error: (failure) {
            GetUtil.dismissDialog();
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
          },
          orElse: () => null,
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: Sizes.height93,
        ),
        child: PrimaryButton(
          width: Sizes.widthFull,
          height: Sizes.height66,
          text: Strings.logIn,
          fontSize: Sizes.sp22,
          fontWeight: FontWeight.w700,
          onPressed: _onPressLogin,
        ),
      ),
    );
  }

  _onPressLogin() async {
    if (formKeyLogin.currentState?.validate() ?? false) {
      GetUtil.context.read<LoginCubit>().doLogin();
    }
  }
}
