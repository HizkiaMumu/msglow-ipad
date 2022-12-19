import 'package:flutter/material.dart';

import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../domain/entities/penjualan/e_wallet_item_data.dart';
import 'e_wallet_list_item.dart';

class EWalletList extends StatelessWidget {
  const EWalletList({Key? key}) : super(key: key);

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
      itemCount: EWalletItemData.items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Sizes.width12,
        mainAxisSpacing: Sizes.height20,
        mainAxisExtent: Sizes.height53,
      ),
      itemBuilder: (context, index) {
        return EWalletListItem(
          data: EWalletItemData.items[index],
        );
      },
    );
    // Wrap(
    //   children:
    //       EWalletItemData.items.map((e) => EWalletListItem(data: e)).toList(),
    // );
  }
}
