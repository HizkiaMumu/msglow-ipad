import '../../../core/constants/image_asset.dart';
import '../../../core/constants/strings.dart';

class NavDrawerItem {
  final int id;
  final String label, imageAsset;

  NavDrawerItem({
    required this.id,
    required this.label,
    required this.imageAsset,
  });

  static final items = [
    NavDrawerItem(
      id: 0,
      label: Strings.penjualan,
      imageAsset: ImageAsset.icPenjualan,
    ),
    NavDrawerItem(
      id: 1,
      label: Strings.transaksi,
      imageAsset: ImageAsset.icTransaction,
    ),
    NavDrawerItem(
      id: 2,
      label: Strings.kas,
      imageAsset: ImageAsset.icInputPenjualan,
    ),
    NavDrawerItem(
      id: 3,
      label: Strings.profile,
      imageAsset: ImageAsset.icProfile,
    ),
  ];
}
