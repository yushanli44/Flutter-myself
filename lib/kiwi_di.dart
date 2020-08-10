import 'package:crm_mobile/screens/escalation_list/use_cases/escalation_list_use_cases.dart';
import 'package:kiwi/kiwi.dart';

import 'screens/escalation_list/data_provider/api/i_escalation_list_api.dart';
import 'screens/escalation_list/data_provider/api/impl/escalation_list_api_impl.dart';
import 'screens/escalation_list/repository/i_escalation_list_repository.dart';
import 'screens/escalation_list/repository/impl/escalation_list_repository_impl.dart';
import 'screens/escalation_list/use_cases/interactors/escalation_list_interactors.dart';

part 'kiwi_di.g.dart';

abstract class Injector {
  /// 連絡
  @Register.factory(EscalationListUseCases, from: EscalationListInterActors)
  @Register.factory(IEscalationListRepository, from: EscalationListRepositoryImpl)
  @Register.factory(IEscalationListApi, from: EscalationListApiImpl)
  void configure();
}

void initInjector() {
  final injector = _$Injector();
  injector.configure();
}
