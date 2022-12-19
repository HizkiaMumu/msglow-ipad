import 'package:flutter/material.dart';

import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../domain/entities/penjualan/transfer_bank_item_data.dart';
import 'transfer_bank_list_item.dart';

class TransferBankList extends StatelessWidget {
  const TransferBankList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(
        left: Sizes.width20,
        right: Sizes.width33,
        bottom: Sizes.height2,
      ),
      itemCount: TransferBankItemData.items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Sizes.width12,
        mainAxisSpacing: Sizes.height20,
        mainAxisExtent: Sizes.height53,
      ),
      itemBuilder: (context, index) {
        return TransferBankListItem(
          data: TransferBankItemData.items[index],
        );
      },
    );
    // Wrap(
    //   children:
    //       TransferBankItemData.items.map((e) => TransferBankListItem(data: e)).toList(),
    // );
  }
}
