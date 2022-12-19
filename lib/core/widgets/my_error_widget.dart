import 'package:flutter/material.dart';

import '../style/sizes.dart';
import '../unions/failure.dart';
import 'my_text.dart';
import 'primary_button.dart';

class MyErrorWidget extends StatelessWidget {
  final Failure failure;
  final Function() onPressed;

  const MyErrorWidget({
    Key? key,
    required this.failure,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _message = Failure.getErrorMessage(failure);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            text: _message,
            fontSize: Sizes.sp24,
            color: Colors.white,
          ),
          SizedBox(
            height: Sizes.height16,
          ),
          PrimaryButton(
            onPressed: () {
              onPressed.call();
            },
            text: 'Retry',
          ),
        ],
      ),
    );
  }
}
