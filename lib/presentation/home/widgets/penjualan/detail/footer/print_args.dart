import '../../../../../../data/remote/response/transaction/closing_response.dart';
import '../../../../../../domain/entities/print/print_data.dart';

class PrintArgs {
  final PrintData? printData;
  final ClosingResponse? closingResponse;
  final Function()? onSuccessPrint;

  PrintArgs({
    required this.printData,
    required this.closingResponse,
    this.onSuccessPrint,
  });

  bool get isPrintOrder => printData != null;
}
