import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/request/transaction/send_closing_mail_request.dart';
import '../../data/remote/response/base_response.dart';
import '../repositories/my_repository.dart';

class SendClosingMailUseCaseParams {
  final String email;
  final DateTime? filterDate;

  const SendClosingMailUseCaseParams(
      {required this.email, required this.filterDate});

  SendClosingMailRequest toRequest() => SendClosingMailRequest(email: email);
}

@lazySingleton
class SendClosingMailUseCase
    extends FutureUseCase<BaseResponse, SendClosingMailUseCaseParams> {
  final MyRepository myRepository;

  SendClosingMailUseCase({required this.myRepository});

  @override
  Future<Either<Failure, BaseResponse>> execute(
      SendClosingMailUseCaseParams params) {
    return myRepository.sendClosingMail(params);
  }
}
