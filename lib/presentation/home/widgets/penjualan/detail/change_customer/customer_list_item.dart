import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../domain/entities/penjualan/customer/customer_element.dart';
import '../../cubit/penjualan_cubit.dart';

class CustomerListItem extends StatelessWidget {
  final int index;
  final CustomerElement? customer;
  final CustomerElement? selectedCusomter;

  const CustomerListItem({
    Key? key,
    required this.index,
    required this.customer,
    required this.selectedCusomter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _fullName = Strings.nonMember;
    bool _isSelected = selectedCusomter == null && index == 0 ||
        selectedCusomter?.id == customer?.id;

    if (customer != null) {
      _fullName = customer?.fullName ?? '-';
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color:
            _isSelected ? ColorPalettes.gold.withOpacity(0.05) : Colors.white,
        borderRadius: BorderRadius.circular(Sizes.radius10),
      ),
      child: ListTile(
        // dense: true,
        leading: ClipOval(
          child: MyCachedNetworkImage(
            imageUrl: Constants.placeholderAvatarUrl,
            height: Sizes.height50,
          ),
        ),
        title: Row(
          children: [
            MyText(
              text: _fullName,
              fontSize: Sizes.sp20,
              margin: EdgeInsets.only(
                right: Sizes.width8,
              ),
            ),
            Visibility(
              visible: index != 0,
              child: Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.width12,
                    vertical: Sizes.height4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalettes.bgGoldOp15,
                    borderRadius: BorderRadius.circular(Sizes.radius25),
                  ),
                  child: MyText(
                    text: customer?.statusCustomer?.title ?? '-',
                    fontSize: Sizes.sp11,
                    color: ColorPalettes.bgProductItemGold,
                  ),
                ),
              ),
            ),
          ],
        ),
        subtitle: MyText(
          text: customer?.numberId != null ? '#${customer?.numberId}' : '-',
          fontSize: Sizes.sp14,
          color: ColorPalettes.greyText,
        ),
        trailing: _isSelected
            ? Icon(
                Icons.check,
                color: Colors.green,
                size: Sizes.height30,
              )
            : null,
        onTap: _onTapItem,
      ),
    );
  }

  _onTapItem() {
    GetUtil.context.read<PenjualanCubit>().changeCustomer(customer);
    GetUtil.dismissDialog();
  }
}
