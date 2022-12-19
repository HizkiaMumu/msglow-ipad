import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../core/constants/strings.dart';
import '../../../core/style/sizes.dart';
import '../cubit/login_cubit.dart';
import 'login_base_form.dart';

final formKeyLogin = GlobalKey<FormBuilderState>();

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height90,
      ),
      child: FormBuilder(
        key: formKeyLogin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginBaseForm(
              label: Strings.usernameOrEmail,
              keyboardType: TextInputType.emailAddress,
              name: 'username',
              onChanged: (String? value) {
                context.read<LoginCubit>().saveUsername(value);
              },
            ),
            SizedBox(
              height: Sizes.height30,
            ),
            LoginBaseForm(
              label: Strings.password,
              obscureText: true,
              name: 'password',
              onChanged: (String? value) {
                context.read<LoginCubit>().savePassword(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
