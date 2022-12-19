import 'package:flutter/material.dart';

import '../style/sizes.dart';

class ClickableCardText extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ClickableCardText({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.radius16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radius16),
        ),
        elevation: Sizes.radius4,
        child: InkWell(
          onTap: () {
            onTap.call();
          },
          child: Padding(
            padding: EdgeInsets.all(Sizes.width16),
            child: Row(
              children: [
                Expanded(
                  child: Text(text),
                ),
                SizedBox(
                  width: Sizes.width8,
                ),
                const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
