// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiwi_di.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void configure() {
    final Container container = Container();
    container.registerFactory<EscalationListUseCases,
        EscalationListInterActors>((c) => EscalationListInterActors());
    container.registerFactory<IEscalationListRepository,
        EscalationListRepositoryImpl>((c) => EscalationListRepositoryImpl());
    container.registerFactory<IEscalationListApi, EscalationListApiImpl>(
        (c) => EscalationListApiImpl());
  }
}
