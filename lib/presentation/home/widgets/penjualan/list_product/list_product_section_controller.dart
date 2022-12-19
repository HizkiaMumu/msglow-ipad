import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../data/remote/response/penjualan/product_categories_and_packages_response.dart';
import '../../../../../di/injection_container.dart';
import '../../../../../domain/entities/login/user.dart';
import '../../../../../domain/repositories/my_repository.dart';

class ListProductSectionController extends GetxController {
  late final MyRepository _repository;

  final fullCategory = <ProductCategory>[].obs;
  final fullPackages = <ProductPackage>[].obs;

  final productCategoryListObs = <ProductCategory>[].obs;
  final productPackageListObs = <ProductPackage>[].obs;
  final _selectedProductCategoryObs = Rxn<ProductCategory>();

  Rxn<ProductCategory> get selectedProductCategoryOs => _selectedProductCategoryObs;
  final productListObs = <Product>[].obs;
  final resultStateObs = Rx<RxStatus>(RxStatus.empty());
  final listKasirObs = <User>[].obs;
  final selectedKasirObs = Rxn<User>();
  final searchController = TextEditingController();

  String _filter = "";

  void onFilterChanged(String s) {
    _filter = s;
    applyFilter();
  }

  void setSelectedCategory(ProductCategory? category) {
    _selectedProductCategoryObs.value = category;
    searchController.text = "";
    applyFilter();
  }

  @override
  void onInit() {
    super.onInit();
    _repository = getIt.get<MyRepository>();
    loadProductCategoryAndPackages();
    loadKasirList();
    selectedKasirObs.value = _repository.getUser();
    searchController.addListener(() {
      onFilterChanged(searchController.text);
    });
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  void loadProductCategoryAndPackages() {
    resultStateObs.value = RxStatus.loading();
    _repository.getProductCategoriesAndPackages().then((ProductCategoriesAndPackagesResponse result) {
      fullCategory.clear();
      fullPackages.clear();
      if (result.status.toLowerCase() == "ok") {
        resultStateObs.value = RxStatus.success();
        fullCategory.addAll(result.categoryProducts);
        fullPackages.addAll(result.packages);
        applyFilter();
      } else {
        resultStateObs.value = RxStatus.error(result.message);
      }
      applyFilter();
    });
  }

  void applyFilter() {
    if (_selectedProductCategoryObs.value == null) {
      final categories = <ProductCategory>[];
      final packages = <ProductPackage>[];
      categories.addAll(fullCategory.where((k) => k.name.toLowerCase().contains(_filter.toLowerCase())));
      packages.addAll(fullPackages.where((k) => k.name.toLowerCase().contains(_filter.toLowerCase())));
      productCategoryListObs.value = categories;
      productPackageListObs.value = packages;
    } else {
      final temp = <Product>[];
      for (Product element in _selectedProductCategoryObs.value?.products ?? []) {
        if (element.name.toLowerCase().contains(_filter.toLowerCase())) {
          temp.add(element);
        }
      }
      productListObs.value = temp;
    }
  }

  void loadKasirList() {
    debugPrint("Getting kasir list");
    _repository.getListKasir().then((value) {
      if (value.status.toLowerCase() == "ok") {
        listKasirObs.value = value.users;
        final currentUser = _repository.getUser();
        selectedKasirObs.value = value.users.firstWhere((element) => element.id == currentUser?.id);
      }
    });
  }
}
