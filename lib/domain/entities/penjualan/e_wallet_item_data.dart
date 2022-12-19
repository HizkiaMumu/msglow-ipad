import '../../../core/constants/image_asset.dart';

class EWalletItemData {
  final int id;
  final String imageAsset;
  final String name;

  EWalletItemData({
    required this.id,
    required this.imageAsset,
    required this.name,
  });

  static final items = [
    EWalletItemData(
      id: 0,
      imageAsset: ImageAsset.imgQris,
      name: 'Qris',
    ),
    EWalletItemData(
      id: 1,
      imageAsset: ImageAsset.imgDana,
      name: 'Dana',
    ),
    EWalletItemData(
      id: 2,
      imageAsset: ImageAsset.imgGopay,
      name: 'Gopay',
    ),
    EWalletItemData(
      id: 3,
      imageAsset: ImageAsset.imgShopee,
      name: 'Shopee',
    ),
    EWalletItemData(
      id: 4,
      imageAsset: ImageAsset.imgOvo,
      name: 'Ovo',
    ),
  ];
}
