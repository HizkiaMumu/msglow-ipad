import 'package:dio/dio.dart';
import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../core/constants/constants.dart';
import '../data/local/hive/hive_key.dart';
import '../data/local/local_data_source.dart';

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get baseUrl => 'https://beautyyglow.com/api';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, LocalDataSource localDataSource) => Dio(BaseOptions(
        baseUrl: url,
        connectTimeout: Constants.timeoutInMillisecond,
        receiveTimeout: Constants.timeoutInMillisecond,
        sendTimeout: Constants.timeoutInMillisecond,
      ))
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              final _token = localDataSource.getToken();

              if (_token != null) {
                options.headers['Authorization'] = 'Bearer $_token';
              }
              handler.next(options);
            },
          ),
        )
        ..interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true),
        );

  @lazySingleton
  Box<dynamic> hiveBoxMsGlow() => Hive.box(HiveKey.boxMsGlow);

  @lazySingleton
  PrinterBluetoothManager printerManager() => PrinterBluetoothManager();

  @lazySingleton
  BluetoothManager bluetoothManager() => BluetoothManager.instance;
}
