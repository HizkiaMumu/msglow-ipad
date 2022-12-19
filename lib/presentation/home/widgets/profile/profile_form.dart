import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../domain/entities/login/user.dart';
import 'cubit/profile_cubit.dart';
import 'profile_base_form.dart';

final formKeyProfile = GlobalKey<FormBuilderState>();

class ProfileForm extends StatelessWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getUser();
    return _buildForm(
      data: context.select(
        (ProfileCubit value) => value.state.user,
      ),
    );
  }

  Widget _buildForm({User? data}) {
    return FormBuilder(
      key: formKeyProfile,
      child: Wrap(
        runSpacing: Sizes.height32,
        children: [
          ProfileBaseForm(
            label: Strings.nama,
            initialValue: data?.name ?? '',
            focusNode: FocusNode(),
            onChanged: _onChangeName,
            keyboardType: TextInputType.text,
          ),
          ProfileBaseForm(
            label: Strings.email,
            initialValue: data?.email ?? '',
            focusNode: FocusNode(),
            onChanged: _onChangeEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          ProfileBaseForm(
            label: Strings.noTelepon,
            initialValue: data?.phoneNumber ?? '',
            focusNode: FocusNode(),
            onChanged: _onChangePhoneNumber,
            keyboardType: TextInputType.phone,
          ),
          ProfileBaseForm(
            label: Strings.password,
            initialValue: '*********',
            hintText: '*********',
            focusNode: FocusNode(),
            onChanged: _onChangePassword,
            keyboardType: TextInputType.text,
            obscureType: true,
          ),
        ],
      ),
    );
  }

  _onChangeName(String? value) {
    GetUtil.context.read<ProfileCubit>().changeName(value);
  }

  _onChangeEmail(String? value) {
    GetUtil.context.read<ProfileCubit>().changeEmail(value);
  }

  _onChangePhoneNumber(String? value) {
    GetUtil.context.read<ProfileCubit>().changePhoneNumber(value);
  }

  _onChangePassword(String? value) {
    GetUtil.context.read<ProfileCubit>().changePassword(value);
  }
}
