import 'package:injectable/injectable.dart';

import 'entity/login/user_entity.dart';
import 'hive/hive_manager.dart';

@lazySingleton
class LocalDataSource {
  final HiveManager _hiveManager;

  LocalDataSource(this._hiveManager);

  Future<void> saveToken(String? token) async {
    await _hiveManager.saveToken(token);
  }

  Future<void> deleteToken() async {
    await _hiveManager.deleteToken();
  }

  String? getToken() {
    return _hiveManager.getToken();
  }

  Future<void> saveClosingMail(String email) async {
    await _hiveManager.saveClosingMail(email);
  }

  Future<void> deleteClosingMail() async {
    await _hiveManager.deleteClosingMail();
  }

  String? getClosingMail() {
    return _hiveManager.getClosingMail();
  }

  Future<void> saveUser(UserEntity? userEntity) async {
    await _hiveManager.saveUser(userEntity);
  }

  Future<void> deleteUser() async {
    await _hiveManager.deleteUser();
  }

  UserEntity? getUser() {
    return _hiveManager.getUser();
  }
}
