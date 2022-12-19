import 'package:flutter/material.dart';

import '../style/sizes.dart';

class MySliverAppBar extends StatelessWidget {
  // 1
  final String text;
  final Widget flexibleSpace;

  const MySliverAppBar({
    Key? key,
    required this.text,
    required this.flexibleSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2
    return SliverAppBar(
      title: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),

      backgroundColor: Colors.cyan,
      // centerTitle: centerTitle,
      // 3
      expandedHeight: Sizes.height185,

      // 4
      pinned: true,
      floating: false,
      snap: false,
      // 5
      flexibleSpace: flexibleSpace,
    );
  }
}
