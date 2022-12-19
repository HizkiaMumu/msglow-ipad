import 'package:flutter/material.dart';

import '../../../../../core/style/sizes.dart';
import 'transaction_tab_item.dart';

class TransactionTab extends StatelessWidget {
  const TransactionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tabItems = ['Transaksi', 'Input Pengeluaran', "Kas Masuk"];
    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.height50,
        bottom: Sizes.height33,
      ),
      child: Wrap(
        spacing: Sizes.width31,
        children: _tabItems.map((e) {
          return TransactionTabItem(
            index: _tabItems.indexOf(e),
            title: e,
          );
        }).toList(),
      ),
    );
  }
}
