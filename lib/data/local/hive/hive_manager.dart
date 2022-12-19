import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../entity/login/user_entity.dart';
import 'hive_key.dart';

@lazySingleton
class HiveManager {
  final Box<dynamic> _box;

  HiveManager(this._box);

  Future<void> saveToken(String? token) async {
    await _box.put(HiveKey.token, token);
  }

  Future<void> saveClosingMail(String email) async {
    await _box.put(HiveKey.closingMail, email);
  }

  Future<void> deleteToken() async {
    await _box.delete(HiveKey.token);
  }

  Future<void> deleteClosingMail() async {
    await _box.delete(HiveKey.closingMail);
  }

  String? getToken() {
    return _box.get(HiveKey.token);
  }

  String? getClosingMail() {
    return _box.get(HiveKey.closingMail);
  }

  Future<void> saveUser(UserEntity? userEntity) async {
    await _box.put(HiveKey.user, userEntity);
  }

  Future<void> deleteUser() async {
    await _box.delete(HiveKey.user);
  }

  UserEntity? getUser() {
    return _box.get(HiveKey.user);
  }
}
