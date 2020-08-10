import 'package:moor_flutter/moor_flutter.dart';

/// moor 声明表
///
@DataClassName('ClientAspEntry')
class ClientAsp extends Table {
  IntColumn get aspId => integer()();
  TextColumn get aspName => text()();
  TextColumn get aspColor => text()();
  TextColumn get aspAbbr => text().nullable()();
  IntColumn get compId => integer().nullable()();
  IntColumn get dispOrder => integer().nullable()();
  IntColumn get industryCd => integer().nullable()();
  TextColumn get president => text().nullable()();
  TextColumn get zipcode => text().nullable()();
  TextColumn get prefect => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get addr => text().nullable()();
  TextColumn get bldg => text().nullable()();
  TextColumn get telnum => text().nullable()();
  TextColumn get faxnum => text().nullable()();
  TextColumn get emailaddr => text().nullable()();
  TextColumn get hpUrl => text().nullable()();
  IntColumn get noCompRcptAlertTime => integer().nullable()();
  TextColumn get firstScript => text().nullable()();
  TextColumn get receptWayMemo => text().nullable()();
  TextColumn get remark => text().nullable()();
  IntColumn get csvupdId => integer().nullable()();
  TextColumn get dispFlg => text().nullable()();
  TextColumn get custCreatePermKbn => text().nullable()();
  TextColumn get contractStartDate => text().nullable()();
  TextColumn get contractEndDate => text().nullable()();
  TextColumn get aspType => text().nullable()();
  TextColumn get yobi1 => text().nullable()();
  TextColumn get yobi2 => text().nullable()();
  TextColumn get yobi3 => text().nullable()();
  TextColumn get yobi4 => text().nullable()();
  TextColumn get yobi5 => text().nullable()();
  TextColumn get yobi6 => text().nullable()();
  TextColumn get yobi7 => text().nullable()();
  TextColumn get yobi8 => text().nullable()();
  TextColumn get yobi9 => text().nullable()();
  TextColumn get yobi10 => text().nullable()();
  TextColumn get largeYobi1 => text().nullable()();
  TextColumn get largeYobi2 => text().nullable()();
  TextColumn get largeYobi3 => text().nullable()();
  TextColumn get largeYobi4 => text().nullable()();
  TextColumn get largeYobi5 => text().nullable()();
  TextColumn get largeYobi6 => text().nullable()();
  TextColumn get largeYobi7 => text().nullable()();
  TextColumn get largeYobi8 => text().nullable()();
  TextColumn get largeYobi9 => text().nullable()();
  TextColumn get largeYobi10 => text().nullable()();

  @override
  Set<Column> get primaryKey => {aspId};
}
