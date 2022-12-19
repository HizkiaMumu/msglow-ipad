import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../libraries/image_picker_util.dart';
import '../libraries/permission_helper.dart';
import '../style/sizes.dart';
import '../unions/failure.dart';
import '../utils/get_util.dart';
import 'my_text.dart';

class ImagePermissionDialog extends StatelessWidget {
  final Function(File) pickedImageFile;

  const ImagePermissionDialog({
    Key? key,
    required this.pickedImageFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.width580,
        vertical: Sizes.height24,
      ),
      child: Container(
        padding: EdgeInsets.all(Sizes.height16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Wrap(
          children: <Widget>[
            MyText(
              text: Strings.titlePickImage,
              fontSize: Sizes.sp20,
              fontWeight: FontWeight.w500,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: Sizes.height30,
            ),
            ListTile(
                leading: const Icon(Icons.photo_library),
                title: MyText(
                  text: Strings.gallery,
                  fontSize: Sizes.sp18,
                ),
                onTap: () async {
                  await PermissionHelper.requestPermissionStorage(
                    onGranted: () async {
                      final _result = await ImagePickerUtil.pickGalleryImage();
                      handleImageResult(_result);
                    },
                    onDenied: () {
                      // context.showErrorSnackbar(
                      //   LocaleKeys.msg_storage_permission.tr(),
                      // );
                    },
                  );

                  GetUtil.dismissDialog();
                }),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: MyText(
                text: Strings.camera,
                fontSize: Sizes.sp18,
              ),
              onTap: () async {
                await PermissionHelper.requestPermissionCamera(
                  onGranted: () async {
                    final _result = await ImagePickerUtil.pickCameraImage();
                    handleImageResult(_result);
                  },
                  onDenied: () {
                    // context.showErrorSnackbar(
                    //   LocaleKeys.msg_camera_permission.tr(),
                    // );
                  },
                );

                // NavigatorUtil.popUntilNew();
                GetUtil.dismissDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  void handleImageResult(Either<Failure, File> result) {
    result.fold(
      (l) => log('handleImageResult $l'),
      (r) => pickedImageFile(r),
    );
  }
}
