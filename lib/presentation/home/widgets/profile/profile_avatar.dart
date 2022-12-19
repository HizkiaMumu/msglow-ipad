import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/widgets/image_permission_dialog.dart';
import '../../../../core/widgets/my_cached_network_image.dart';
import 'cubit/profile_cubit.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: InkWell(
        onTap: _onTapAvatar,
        child: Container(
          width: Sizes.height203,
          height: Sizes.height203,
          decoration: const BoxDecoration(
            color: ColorPalettes.bgNavigationMenu,
            shape: BoxShape.circle,
          ),
          child: context.select(
            (ProfileCubit value) {
              if (value.state.pickedImageFile == null) {
                bool _validURL = Uri.tryParse(value.state.user.avatar ?? '')?.hasAbsolutePath ?? false;

                return MyCachedNetworkImage(
                  imageUrl: _validURL ? value.state.user.avatar : Constants.placeholderAvatarUrl,
                  width: Sizes.height203,
                  height: Sizes.height203,
                  fit: BoxFit.cover,
                  errorWidget: Icon(
                    FontAwesomeIcons.user,
                    size: Sizes.height143,
                    color: ColorPalettes.primary,
                  ),
                );
              }

              return Image.file(
                value.state.pickedImageFile!,
                width: Sizes.height203,
                height: Sizes.height203,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }

  _onTapAvatar() async {
    await GetUtil.showDialog(
      ImagePermissionDialog(
        pickedImageFile: (imageFile) {
          GetUtil.context.read<ProfileCubit>().savePickedImageFile(imageFile);
        },
      ),
    );
  }
}
