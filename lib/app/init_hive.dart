import 'package:hive_flutter/hive_flutter.dart';

import '../data/local/entity/login/merchant_entity.dart';
import '../data/local/entity/login/user_entity.dart';
import '../data/local/entity/login/user_role_entity.dart';
import '../data/local/hive/hive_key.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  Hive.registerAdapter(UserRoleEntityAdapter());
  Hive.registerAdapter(MerchantEntityAdapter());
  await Hive.openBox(HiveKey.boxMsGlow);
}
