import 'package:injectable/injectable.dart';

import '../../core/base/usecase/no_param.dart';
import '../../core/base/usecase/usecase.dart';
import '../repositories/my_repository.dart';

@lazySingleton
class GetClosingMailUseCase extends UseCase<String?, NoParam> {
  final MyRepository myRepository;

  GetClosingMailUseCase({required this.myRepository});

  @override
  String? call(NoParam params) {
    return myRepository.getClosingMail();
  }
}
