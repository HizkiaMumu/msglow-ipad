import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/rounded_border_card.dart';
import '../../cubit/penjualan_cubit.dart';
import 'change_customer_dialog.dart';

class ChangeCustomerCard extends StatelessWidget {
  const ChangeCustomerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedCustomer =
        context.select((PenjualanCubit value) => value.state.selectedCustomer);

    String _avatar = Constants.placeholderAvatarUrl;
    String _name = Strings.nonMember;
    String _address = Strings.msgChooseCustomer;
    String _buttonText = Strings.chooseCustomer;

    if (_selectedCustomer != null) {
      // _avatar = _selectedCustomer.avatar;
      _name = _selectedCustomer.fullName ?? '-';
      _address = _selectedCustomer.address ?? '-';
      _buttonText = Strings.gantiCustomer;
    }

    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height40,
      ),
      child: RoundedBorderCard(
        padding: EdgeInsets.symmetric(
          vertical: Sizes.height17,
          horizontal: Sizes.width11,
        ),
        child: Row(
          children: [
            // Customer avatar
            ClipOval(
              child: MyCachedNetworkImage(
                imageUrl: _avatar,
                height: Sizes.height51,
              ),
            ),
            SizedBox(
              width: Sizes.width19,
            ),
            // Customer info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyText(
                        text: _name,
                        fontSize: Sizes.sp18,
                        fontWeight: FontWeight.w500,
                        textType: TextType.subtitle1,
                      ),
                      if (_selectedCustomer != null)
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Sizes.width10,
                              vertical: Sizes.height4,
                            ),
                            margin: EdgeInsets.only(
                              left: Sizes.width8,
                            ),
                            decoration: BoxDecoration(
                              color: ColorPalettes.bgGoldOp15,
                              borderRadius:
                                  BorderRadius.circular(Sizes.radius25),
                            ),
                            child: MyText(
                              text: _selectedCustomer.statusCustomer?.title ??
                                  '-',
                              fontSize: Sizes.sp9,
                              color: ColorPalettes.bgProductItemGold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  MyText(
                    text: _selectedCustomer?.numberId != null
                        ? '#${_selectedCustomer?.numberId}'
                        : '-',
                    fontSize: Sizes.sp14,
                    color: ColorPalettes.greyText,
                  ),
                  SizedBox(
                    height: Sizes.height8,
                  ),
                  Visibility(
                    visible: _selectedCustomer != null,
                    child: MyText(
                      text: _address,
                      fontSize: Sizes.sp14,
                      fontWeight: FontWeight.w500,
                      textType: TextType.bodyText2,
                      color: ColorPalettes.greyText,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Sizes.width10,
            ),
            // Change customer button
            PrimaryButton(
              text: _buttonText,
              fontSize: Sizes.sp12,
              width: Sizes.width126,
              height: Sizes.height39,
              padding: EdgeInsets.only(
                right: Sizes.width10,
              ),
              onPressed: _onPressChooseCustomer,
            ),
          ],
        ),
      ),
    );
  }

  _onPressChooseCustomer() {
    GetUtil.showDialog(const ChangeCustomerDialog());
  }
}
