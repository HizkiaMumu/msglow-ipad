import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/snackbar_ext.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/unions/failure.dart';
import '../../../../core/unions/result_state.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/utils/navigation_util.dart';
import '../../../../core/widgets/loading_dialog.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../../domain/entities/login/login.dart';
import '../../../auth/login_page.dart';
import 'cubit/profile_cubit.dart';
import 'profile_form.dart';

class ProfileFooterButton extends StatelessWidget {
  const ProfileFooterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          previous.logoutResult != current.logoutResult,
      listener: (context, state) {
        _handleLogoutResult(state.logoutResult);
      },
      child: BlocListener<ProfileCubit, ProfileState>(
        listenWhen: (previous, current) =>
            previous.updateProfileResult != current.updateProfileResult,
        listener: (context, state) {
          _handleUpdateResult(state.updateProfileResult);
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.height82,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                text: Strings.update,
                onPressed: _onPressUpdate,
                height: Sizes.height66,
                width: Sizes.width214,
              ),
              SecondaryButton(
                text: Strings.logOut,
                onPressed: _onPressLogOut,
                height: Sizes.height66,
                width: Sizes.width214,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _handleLogoutResult(ResultState<dynamic> logoutResult) {
    logoutResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        // GetUtil.context.showSuccessSnackbar(Strings.msgSuccessLogout);
        await NavigationUtil.pushReplacementNamed(LoginPage.routeName);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _handleUpdateResult(ResultState<Login> updateResult) {
    updateResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        GetUtil.context
            .showSuccessSnackbar(data.message ?? Strings.msgSuccessUpdate);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _onPressUpdate() {
    if (formKeyProfile.currentState?.validate() ?? false) {
      GetUtil.context.read<ProfileCubit>().updateProfile();
    }
  }

  _onPressLogOut() {
    GetUtil.context.read<ProfileCubit>().doLogOut();
  }
}
