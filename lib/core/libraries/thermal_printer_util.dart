class ThermalPrinterUtil {
  const ThermalPrinterUtil._();

  static const int bluetoothActiveCode = 12;
  static const int bluetoothNotActiveCode = 10;

  static bool isBluetoothActive(int? bluetootState) {
    return bluetootState == bluetoothActiveCode;
  }
}
