import 'package:moor_flutter/moor_flutter.dart';

import 'client_asp.dart';

part 'database.g.dart';

@UseMoor(
  tables: [
    ClientAsp,
  ],
)
class DataBase extends _$DataBase {
  DataBase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;

  Future<List<ClientAspEntry>> get getClientAsp => select(clientAsp).get();

  Future<List<ClientAspEntry>> getClientAspByAspId(int aspId) {
    return (select(clientAsp)..where((t) => t.aspId.equals(aspId))).get();
  }

  Future createAllClientAsp(List<ClientAspCompanion> entry) {
    return into(clientAsp).insertAll(entry, orReplace: true);
  }

  Future deleteClientAsp(ClientAspEntry entry) {
    return (delete(clientAsp)..where((t) => t.aspId.equals(entry.aspId))).go();
  }

  Future deleteAllClientAsp() {
    return delete(clientAsp).go();
  }
}
