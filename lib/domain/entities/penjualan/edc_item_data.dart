import 'package:equatable/equatable.dart';

import '../../../core/constants/image_asset.dart';

class EdcItemData extends Equatable {
  final int id;
  final String name;
  final String imageAsset;

  const EdcItemData({
    required this.id,
    required this.name,
    required this.imageAsset,
  });

  @override
  List<Object> get props => [id, name];

  static const items = [
    EdcItemData(
      id: 0,
      name: 'BCA',
      imageAsset: ImageAsset.logoBca,
    ),
    EdcItemData(
      id: 1,
      name: 'BNI',
      imageAsset: ImageAsset.logoBni,
    ),
    EdcItemData(
      id: 2,
      name: 'Mandiri',
      imageAsset: ImageAsset.logoMandiri,
    ),
  ];
}
