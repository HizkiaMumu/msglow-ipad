import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import '../unions/failure.dart';

class ImagePickerUtil {
  const ImagePickerUtil._();

  // // Pick an image
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //   // Capture a photo
  //   final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

  static Future<Either<Failure, File>> pickGalleryImage() async {
    final _xFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (_xFile == null) {
      return const Left(Failure.defaultError('Gagal ambil image galeri'));
    }

    return Right(File(_xFile.path));
  }

  static Future<Either<Failure, File>> pickCameraImage() async {
    final _xFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    if (_xFile == null) {
      return const Left(Failure.defaultError('Gagal ambil image kamera'));
    }

    return Right(File(_xFile.path));
  }
}
