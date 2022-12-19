import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/gradient_container.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../cubit/home_cubit.dart';
import 'list_category_and_package.dart';
import 'list_product.dart';
import 'list_product_section_controller.dart';

class ListProductSection extends StatelessWidget {
  ListProductSection({Key? key}) : super(key: key);
  final ListProductSectionController _controller =
      Get.put<ListProductSectionController>(ListProductSectionController());

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (previous, current) =>
          previous.selectedMenuItemIndex != current.selectedMenuItemIndex,
      listener: (context, state) {
        if (state.selectedMenuItemIndex == 0) {
          _controller.searchController.clear();
        }
      },
      child: GradientContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: EdgeInsets.only(
                top: Sizes.height40,
                left: Sizes.width58,
                bottom: Sizes.height29,
                right: Sizes.width26,
              ),
              child: Row(
                children: [
                  MyText(
                    text: Strings.penjualan,
                    fontSize: Sizes.sp32,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  TextField(
                    controller: _controller.searchController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      constraints: BoxConstraints(
                        maxWidth: Sizes.width238,
                        maxHeight: Sizes.height42,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(Sizes.radius6),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      isDense: true,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
            // List Product
            Expanded(
              child: Obx(
                () => _controller.selectedProductCategoryOs.value == null
                    ? const ListCategoryAndPackage()
                    : const ListProduct(),
              ),
            ),
          ],
        ),
      ),
    );
  }

// _onChangeSearchKeyword(String value) {
//   _controller.onFilterChanged(value);
// }
}
