// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class ClientAspEntry extends DataClass implements Insertable<ClientAspEntry> {
  final int aspId;
  final String aspName;
  final String aspColor;
  final String aspAbbr;
  final int compId;
  final int dispOrder;
  final int industryCd;
  final String president;
  final String zipcode;
  final String prefect;
  final String city;
  final String addr;
  final String bldg;
  final String telnum;
  final String faxnum;
  final String emailaddr;
  final String hpUrl;
  final int noCompRcptAlertTime;
  final String firstScript;
  final String receptWayMemo;
  final String remark;
  final int csvupdId;
  final String dispFlg;
  final String custCreatePermKbn;
  final String contractStartDate;
  final String contractEndDate;
  final String aspType;
  final String yobi1;
  final String yobi2;
  final String yobi3;
  final String yobi4;
  final String yobi5;
  final String yobi6;
  final String yobi7;
  final String yobi8;
  final String yobi9;
  final String yobi10;
  final String largeYobi1;
  final String largeYobi2;
  final String largeYobi3;
  final String largeYobi4;
  final String largeYobi5;
  final String largeYobi6;
  final String largeYobi7;
  final String largeYobi8;
  final String largeYobi9;
  final String largeYobi10;
  ClientAspEntry(
      {@required this.aspId,
      @required this.aspName,
      @required this.aspColor,
      this.aspAbbr,
      this.compId,
      this.dispOrder,
      this.industryCd,
      this.president,
      this.zipcode,
      this.prefect,
      this.city,
      this.addr,
      this.bldg,
      this.telnum,
      this.faxnum,
      this.emailaddr,
      this.hpUrl,
      this.noCompRcptAlertTime,
      this.firstScript,
      this.receptWayMemo,
      this.remark,
      this.csvupdId,
      this.dispFlg,
      this.custCreatePermKbn,
      this.contractStartDate,
      this.contractEndDate,
      this.aspType,
      this.yobi1,
      this.yobi2,
      this.yobi3,
      this.yobi4,
      this.yobi5,
      this.yobi6,
      this.yobi7,
      this.yobi8,
      this.yobi9,
      this.yobi10,
      this.largeYobi1,
      this.largeYobi2,
      this.largeYobi3,
      this.largeYobi4,
      this.largeYobi5,
      this.largeYobi6,
      this.largeYobi7,
      this.largeYobi8,
      this.largeYobi9,
      this.largeYobi10});
  factory ClientAspEntry.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ClientAspEntry(
      aspId: intType.mapFromDatabaseResponse(data['${effectivePrefix}asp_id']),
      aspName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}asp_name']),
      aspColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}asp_color']),
      aspAbbr: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}asp_abbr']),
      compId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}comp_id']),
      dispOrder:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}disp_order']),
      industryCd: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}industry_cd']),
      president: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}president']),
      zipcode:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}zipcode']),
      prefect:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}prefect']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      addr: stringType.mapFromDatabaseResponse(data['${effectivePrefix}addr']),
      bldg: stringType.mapFromDatabaseResponse(data['${effectivePrefix}bldg']),
      telnum:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}telnum']),
      faxnum:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}faxnum']),
      emailaddr: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}emailaddr']),
      hpUrl:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}hp_url']),
      noCompRcptAlertTime: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}no_comp_rcpt_alert_time']),
      firstScript: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}first_script']),
      receptWayMemo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}recept_way_memo']),
      remark:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}remark']),
      csvupdId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}csvupd_id']),
      dispFlg: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}disp_flg']),
      custCreatePermKbn: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}cust_create_perm_kbn']),
      contractStartDate: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}contract_start_date']),
      contractEndDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}contract_end_date']),
      aspType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}asp_type']),
      yobi1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi1']),
      yobi2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi2']),
      yobi3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi3']),
      yobi4:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi4']),
      yobi5:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi5']),
      yobi6:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi6']),
      yobi7:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi7']),
      yobi8:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi8']),
      yobi9:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi9']),
      yobi10:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}yobi10']),
      largeYobi1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi1']),
      largeYobi2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi2']),
      largeYobi3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi3']),
      largeYobi4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi4']),
      largeYobi5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi5']),
      largeYobi6: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi6']),
      largeYobi7: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi7']),
      largeYobi8: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi8']),
      largeYobi9: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi9']),
      largeYobi10: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_yobi10']),
    );
  }
  factory ClientAspEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return ClientAspEntry(
      aspId: serializer.fromJson<int>(json['aspId']),
      aspName: serializer.fromJson<String>(json['aspName']),
      aspColor: serializer.fromJson<String>(json['aspColor']),
      aspAbbr: serializer.fromJson<String>(json['aspAbbr']),
      compId: serializer.fromJson<int>(json['compId']),
      dispOrder: serializer.fromJson<int>(json['dispOrder']),
      industryCd: serializer.fromJson<int>(json['industryCd']),
      president: serializer.fromJson<String>(json['president']),
      zipcode: serializer.fromJson<String>(json['zipcode']),
      prefect: serializer.fromJson<String>(json['prefect']),
      city: serializer.fromJson<String>(json['city']),
      addr: serializer.fromJson<String>(json['addr']),
      bldg: serializer.fromJson<String>(json['bldg']),
      telnum: serializer.fromJson<String>(json['telnum']),
      faxnum: serializer.fromJson<String>(json['faxnum']),
      emailaddr: serializer.fromJson<String>(json['emailaddr']),
      hpUrl: serializer.fromJson<String>(json['hpUrl']),
      noCompRcptAlertTime:
          serializer.fromJson<int>(json['noCompRcptAlertTime']),
      firstScript: serializer.fromJson<String>(json['firstScript']),
      receptWayMemo: serializer.fromJson<String>(json['receptWayMemo']),
      remark: serializer.fromJson<String>(json['remark']),
      csvupdId: serializer.fromJson<int>(json['csvupdId']),
      dispFlg: serializer.fromJson<String>(json['dispFlg']),
      custCreatePermKbn: serializer.fromJson<String>(json['custCreatePermKbn']),
      contractStartDate: serializer.fromJson<String>(json['contractStartDate']),
      contractEndDate: serializer.fromJson<String>(json['contractEndDate']),
      aspType: serializer.fromJson<String>(json['aspType']),
      yobi1: serializer.fromJson<String>(json['yobi1']),
      yobi2: serializer.fromJson<String>(json['yobi2']),
      yobi3: serializer.fromJson<String>(json['yobi3']),
      yobi4: serializer.fromJson<String>(json['yobi4']),
      yobi5: serializer.fromJson<String>(json['yobi5']),
      yobi6: serializer.fromJson<String>(json['yobi6']),
      yobi7: serializer.fromJson<String>(json['yobi7']),
      yobi8: serializer.fromJson<String>(json['yobi8']),
      yobi9: serializer.fromJson<String>(json['yobi9']),
      yobi10: serializer.fromJson<String>(json['yobi10']),
      largeYobi1: serializer.fromJson<String>(json['largeYobi1']),
      largeYobi2: serializer.fromJson<String>(json['largeYobi2']),
      largeYobi3: serializer.fromJson<String>(json['largeYobi3']),
      largeYobi4: serializer.fromJson<String>(json['largeYobi4']),
      largeYobi5: serializer.fromJson<String>(json['largeYobi5']),
      largeYobi6: serializer.fromJson<String>(json['largeYobi6']),
      largeYobi7: serializer.fromJson<String>(json['largeYobi7']),
      largeYobi8: serializer.fromJson<String>(json['largeYobi8']),
      largeYobi9: serializer.fromJson<String>(json['largeYobi9']),
      largeYobi10: serializer.fromJson<String>(json['largeYobi10']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'aspId': serializer.toJson<int>(aspId),
      'aspName': serializer.toJson<String>(aspName),
      'aspColor': serializer.toJson<String>(aspColor),
      'aspAbbr': serializer.toJson<String>(aspAbbr),
      'compId': serializer.toJson<int>(compId),
      'dispOrder': serializer.toJson<int>(dispOrder),
      'industryCd': serializer.toJson<int>(industryCd),
      'president': serializer.toJson<String>(president),
      'zipcode': serializer.toJson<String>(zipcode),
      'prefect': serializer.toJson<String>(prefect),
      'city': serializer.toJson<String>(city),
      'addr': serializer.toJson<String>(addr),
      'bldg': serializer.toJson<String>(bldg),
      'telnum': serializer.toJson<String>(telnum),
      'faxnum': serializer.toJson<String>(faxnum),
      'emailaddr': serializer.toJson<String>(emailaddr),
      'hpUrl': serializer.toJson<String>(hpUrl),
      'noCompRcptAlertTime': serializer.toJson<int>(noCompRcptAlertTime),
      'firstScript': serializer.toJson<String>(firstScript),
      'receptWayMemo': serializer.toJson<String>(receptWayMemo),
      'remark': serializer.toJson<String>(remark),
      'csvupdId': serializer.toJson<int>(csvupdId),
      'dispFlg': serializer.toJson<String>(dispFlg),
      'custCreatePermKbn': serializer.toJson<String>(custCreatePermKbn),
      'contractStartDate': serializer.toJson<String>(contractStartDate),
      'contractEndDate': serializer.toJson<String>(contractEndDate),
      'aspType': serializer.toJson<String>(aspType),
      'yobi1': serializer.toJson<String>(yobi1),
      'yobi2': serializer.toJson<String>(yobi2),
      'yobi3': serializer.toJson<String>(yobi3),
      'yobi4': serializer.toJson<String>(yobi4),
      'yobi5': serializer.toJson<String>(yobi5),
      'yobi6': serializer.toJson<String>(yobi6),
      'yobi7': serializer.toJson<String>(yobi7),
      'yobi8': serializer.toJson<String>(yobi8),
      'yobi9': serializer.toJson<String>(yobi9),
      'yobi10': serializer.toJson<String>(yobi10),
      'largeYobi1': serializer.toJson<String>(largeYobi1),
      'largeYobi2': serializer.toJson<String>(largeYobi2),
      'largeYobi3': serializer.toJson<String>(largeYobi3),
      'largeYobi4': serializer.toJson<String>(largeYobi4),
      'largeYobi5': serializer.toJson<String>(largeYobi5),
      'largeYobi6': serializer.toJson<String>(largeYobi6),
      'largeYobi7': serializer.toJson<String>(largeYobi7),
      'largeYobi8': serializer.toJson<String>(largeYobi8),
      'largeYobi9': serializer.toJson<String>(largeYobi9),
      'largeYobi10': serializer.toJson<String>(largeYobi10),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<ClientAspEntry>>(
      bool nullToAbsent) {
    return ClientAspCompanion(
      aspId:
          aspId == null && nullToAbsent ? const Value.absent() : Value(aspId),
      aspName: aspName == null && nullToAbsent
          ? const Value.absent()
          : Value(aspName),
      aspColor: aspColor == null && nullToAbsent
          ? const Value.absent()
          : Value(aspColor),
      aspAbbr: aspAbbr == null && nullToAbsent
          ? const Value.absent()
          : Value(aspAbbr),
      compId:
          compId == null && nullToAbsent ? const Value.absent() : Value(compId),
      dispOrder: dispOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(dispOrder),
      industryCd: industryCd == null && nullToAbsent
          ? const Value.absent()
          : Value(industryCd),
      president: president == null && nullToAbsent
          ? const Value.absent()
          : Value(president),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
      prefect: prefect == null && nullToAbsent
          ? const Value.absent()
          : Value(prefect),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      addr: addr == null && nullToAbsent ? const Value.absent() : Value(addr),
      bldg: bldg == null && nullToAbsent ? const Value.absent() : Value(bldg),
      telnum:
          telnum == null && nullToAbsent ? const Value.absent() : Value(telnum),
      faxnum:
          faxnum == null && nullToAbsent ? const Value.absent() : Value(faxnum),
      emailaddr: emailaddr == null && nullToAbsent
          ? const Value.absent()
          : Value(emailaddr),
      hpUrl:
          hpUrl == null && nullToAbsent ? const Value.absent() : Value(hpUrl),
      noCompRcptAlertTime: noCompRcptAlertTime == null && nullToAbsent
          ? const Value.absent()
          : Value(noCompRcptAlertTime),
      firstScript: firstScript == null && nullToAbsent
          ? const Value.absent()
          : Value(firstScript),
      receptWayMemo: receptWayMemo == null && nullToAbsent
          ? const Value.absent()
          : Value(receptWayMemo),
      remark:
          remark == null && nullToAbsent ? const Value.absent() : Value(remark),
      csvupdId: csvupdId == null && nullToAbsent
          ? const Value.absent()
          : Value(csvupdId),
      dispFlg: dispFlg == null && nullToAbsent
          ? const Value.absent()
          : Value(dispFlg),
      custCreatePermKbn: custCreatePermKbn == null && nullToAbsent
          ? const Value.absent()
          : Value(custCreatePermKbn),
      contractStartDate: contractStartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(contractStartDate),
      contractEndDate: contractEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(contractEndDate),
      aspType: aspType == null && nullToAbsent
          ? const Value.absent()
          : Value(aspType),
      yobi1:
          yobi1 == null && nullToAbsent ? const Value.absent() : Value(yobi1),
      yobi2:
          yobi2 == null && nullToAbsent ? const Value.absent() : Value(yobi2),
      yobi3:
          yobi3 == null && nullToAbsent ? const Value.absent() : Value(yobi3),
      yobi4:
          yobi4 == null && nullToAbsent ? const Value.absent() : Value(yobi4),
      yobi5:
          yobi5 == null && nullToAbsent ? const Value.absent() : Value(yobi5),
      yobi6:
          yobi6 == null && nullToAbsent ? const Value.absent() : Value(yobi6),
      yobi7:
          yobi7 == null && nullToAbsent ? const Value.absent() : Value(yobi7),
      yobi8:
          yobi8 == null && nullToAbsent ? const Value.absent() : Value(yobi8),
      yobi9:
          yobi9 == null && nullToAbsent ? const Value.absent() : Value(yobi9),
      yobi10:
          yobi10 == null && nullToAbsent ? const Value.absent() : Value(yobi10),
      largeYobi1: largeYobi1 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi1),
      largeYobi2: largeYobi2 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi2),
      largeYobi3: largeYobi3 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi3),
      largeYobi4: largeYobi4 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi4),
      largeYobi5: largeYobi5 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi5),
      largeYobi6: largeYobi6 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi6),
      largeYobi7: largeYobi7 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi7),
      largeYobi8: largeYobi8 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi8),
      largeYobi9: largeYobi9 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi9),
      largeYobi10: largeYobi10 == null && nullToAbsent
          ? const Value.absent()
          : Value(largeYobi10),
    ) as T;
  }

  ClientAspEntry copyWith(
          {int aspId,
          String aspName,
          String aspColor,
          String aspAbbr,
          int compId,
          int dispOrder,
          int industryCd,
          String president,
          String zipcode,
          String prefect,
          String city,
          String addr,
          String bldg,
          String telnum,
          String faxnum,
          String emailaddr,
          String hpUrl,
          int noCompRcptAlertTime,
          String firstScript,
          String receptWayMemo,
          String remark,
          int csvupdId,
          String dispFlg,
          String custCreatePermKbn,
          String contractStartDate,
          String contractEndDate,
          String aspType,
          String yobi1,
          String yobi2,
          String yobi3,
          String yobi4,
          String yobi5,
          String yobi6,
          String yobi7,
          String yobi8,
          String yobi9,
          String yobi10,
          String largeYobi1,
          String largeYobi2,
          String largeYobi3,
          String largeYobi4,
          String largeYobi5,
          String largeYobi6,
          String largeYobi7,
          String largeYobi8,
          String largeYobi9,
          String largeYobi10}) =>
      ClientAspEntry(
        aspId: aspId ?? this.aspId,
        aspName: aspName ?? this.aspName,
        aspColor: aspColor ?? this.aspColor,
        aspAbbr: aspAbbr ?? this.aspAbbr,
        compId: compId ?? this.compId,
        dispOrder: dispOrder ?? this.dispOrder,
        industryCd: industryCd ?? this.industryCd,
        president: president ?? this.president,
        zipcode: zipcode ?? this.zipcode,
        prefect: prefect ?? this.prefect,
        city: city ?? this.city,
        addr: addr ?? this.addr,
        bldg: bldg ?? this.bldg,
        telnum: telnum ?? this.telnum,
        faxnum: faxnum ?? this.faxnum,
        emailaddr: emailaddr ?? this.emailaddr,
        hpUrl: hpUrl ?? this.hpUrl,
        noCompRcptAlertTime: noCompRcptAlertTime ?? this.noCompRcptAlertTime,
        firstScript: firstScript ?? this.firstScript,
        receptWayMemo: receptWayMemo ?? this.receptWayMemo,
        remark: remark ?? this.remark,
        csvupdId: csvupdId ?? this.csvupdId,
        dispFlg: dispFlg ?? this.dispFlg,
        custCreatePermKbn: custCreatePermKbn ?? this.custCreatePermKbn,
        contractStartDate: contractStartDate ?? this.contractStartDate,
        contractEndDate: contractEndDate ?? this.contractEndDate,
        aspType: aspType ?? this.aspType,
        yobi1: yobi1 ?? this.yobi1,
        yobi2: yobi2 ?? this.yobi2,
        yobi3: yobi3 ?? this.yobi3,
        yobi4: yobi4 ?? this.yobi4,
        yobi5: yobi5 ?? this.yobi5,
        yobi6: yobi6 ?? this.yobi6,
        yobi7: yobi7 ?? this.yobi7,
        yobi8: yobi8 ?? this.yobi8,
        yobi9: yobi9 ?? this.yobi9,
        yobi10: yobi10 ?? this.yobi10,
        largeYobi1: largeYobi1 ?? this.largeYobi1,
        largeYobi2: largeYobi2 ?? this.largeYobi2,
        largeYobi3: largeYobi3 ?? this.largeYobi3,
        largeYobi4: largeYobi4 ?? this.largeYobi4,
        largeYobi5: largeYobi5 ?? this.largeYobi5,
        largeYobi6: largeYobi6 ?? this.largeYobi6,
        largeYobi7: largeYobi7 ?? this.largeYobi7,
        largeYobi8: largeYobi8 ?? this.largeYobi8,
        largeYobi9: largeYobi9 ?? this.largeYobi9,
        largeYobi10: largeYobi10 ?? this.largeYobi10,
      );
  @override
  String toString() {
    return (StringBuffer('ClientAspEntry(')
          ..write('aspId: $aspId, ')
          ..write('aspName: $aspName, ')
          ..write('aspColor: $aspColor, ')
          ..write('aspAbbr: $aspAbbr, ')
          ..write('compId: $compId, ')
          ..write('dispOrder: $dispOrder, ')
          ..write('industryCd: $industryCd, ')
          ..write('president: $president, ')
          ..write('zipcode: $zipcode, ')
          ..write('prefect: $prefect, ')
          ..write('city: $city, ')
          ..write('addr: $addr, ')
          ..write('bldg: $bldg, ')
          ..write('telnum: $telnum, ')
          ..write('faxnum: $faxnum, ')
          ..write('emailaddr: $emailaddr, ')
          ..write('hpUrl: $hpUrl, ')
          ..write('noCompRcptAlertTime: $noCompRcptAlertTime, ')
          ..write('firstScript: $firstScript, ')
          ..write('receptWayMemo: $receptWayMemo, ')
          ..write('remark: $remark, ')
          ..write('csvupdId: $csvupdId, ')
          ..write('dispFlg: $dispFlg, ')
          ..write('custCreatePermKbn: $custCreatePermKbn, ')
          ..write('contractStartDate: $contractStartDate, ')
          ..write('contractEndDate: $contractEndDate, ')
          ..write('aspType: $aspType, ')
          ..write('yobi1: $yobi1, ')
          ..write('yobi2: $yobi2, ')
          ..write('yobi3: $yobi3, ')
          ..write('yobi4: $yobi4, ')
          ..write('yobi5: $yobi5, ')
          ..write('yobi6: $yobi6, ')
          ..write('yobi7: $yobi7, ')
          ..write('yobi8: $yobi8, ')
          ..write('yobi9: $yobi9, ')
          ..write('yobi10: $yobi10, ')
          ..write('largeYobi1: $largeYobi1, ')
          ..write('largeYobi2: $largeYobi2, ')
          ..write('largeYobi3: $largeYobi3, ')
          ..write('largeYobi4: $largeYobi4, ')
          ..write('largeYobi5: $largeYobi5, ')
          ..write('largeYobi6: $largeYobi6, ')
          ..write('largeYobi7: $largeYobi7, ')
          ..write('largeYobi8: $largeYobi8, ')
          ..write('largeYobi9: $largeYobi9, ')
          ..write('largeYobi10: $largeYobi10')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      aspId.hashCode,
      $mrjc(
          aspName.hashCode,
          $mrjc(
              aspColor.hashCode,
              $mrjc(
                  aspAbbr.hashCode,
                  $mrjc(
                      compId.hashCode,
                      $mrjc(
                          dispOrder.hashCode,
                          $mrjc(
                              industryCd.hashCode,
                              $mrjc(
                                  president.hashCode,
                                  $mrjc(
                                      zipcode.hashCode,
                                      $mrjc(
                                          prefect.hashCode,
                                          $mrjc(
                                              city.hashCode,
                                              $mrjc(
                                                  addr.hashCode,
                                                  $mrjc(
                                                      bldg.hashCode,
                                                      $mrjc(
                                                          telnum.hashCode,
                                                          $mrjc(
                                                              faxnum.hashCode,
                                                              $mrjc(
                                                                  emailaddr
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      hpUrl
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          noCompRcptAlertTime
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              firstScript.hashCode,
                                                                              $mrjc(receptWayMemo.hashCode, $mrjc(remark.hashCode, $mrjc(csvupdId.hashCode, $mrjc(dispFlg.hashCode, $mrjc(custCreatePermKbn.hashCode, $mrjc(contractStartDate.hashCode, $mrjc(contractEndDate.hashCode, $mrjc(aspType.hashCode, $mrjc(yobi1.hashCode, $mrjc(yobi2.hashCode, $mrjc(yobi3.hashCode, $mrjc(yobi4.hashCode, $mrjc(yobi5.hashCode, $mrjc(yobi6.hashCode, $mrjc(yobi7.hashCode, $mrjc(yobi8.hashCode, $mrjc(yobi9.hashCode, $mrjc(yobi10.hashCode, $mrjc(largeYobi1.hashCode, $mrjc(largeYobi2.hashCode, $mrjc(largeYobi3.hashCode, $mrjc(largeYobi4.hashCode, $mrjc(largeYobi5.hashCode, $mrjc(largeYobi6.hashCode, $mrjc(largeYobi7.hashCode, $mrjc(largeYobi8.hashCode, $mrjc(largeYobi9.hashCode, largeYobi10.hashCode)))))))))))))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is ClientAspEntry &&
          other.aspId == aspId &&
          other.aspName == aspName &&
          other.aspColor == aspColor &&
          other.aspAbbr == aspAbbr &&
          other.compId == compId &&
          other.dispOrder == dispOrder &&
          other.industryCd == industryCd &&
          other.president == president &&
          other.zipcode == zipcode &&
          other.prefect == prefect &&
          other.city == city &&
          other.addr == addr &&
          other.bldg == bldg &&
          other.telnum == telnum &&
          other.faxnum == faxnum &&
          other.emailaddr == emailaddr &&
          other.hpUrl == hpUrl &&
          other.noCompRcptAlertTime == noCompRcptAlertTime &&
          other.firstScript == firstScript &&
          other.receptWayMemo == receptWayMemo &&
          other.remark == remark &&
          other.csvupdId == csvupdId &&
          other.dispFlg == dispFlg &&
          other.custCreatePermKbn == custCreatePermKbn &&
          other.contractStartDate == contractStartDate &&
          other.contractEndDate == contractEndDate &&
          other.aspType == aspType &&
          other.yobi1 == yobi1 &&
          other.yobi2 == yobi2 &&
          other.yobi3 == yobi3 &&
          other.yobi4 == yobi4 &&
          other.yobi5 == yobi5 &&
          other.yobi6 == yobi6 &&
          other.yobi7 == yobi7 &&
          other.yobi8 == yobi8 &&
          other.yobi9 == yobi9 &&
          other.yobi10 == yobi10 &&
          other.largeYobi1 == largeYobi1 &&
          other.largeYobi2 == largeYobi2 &&
          other.largeYobi3 == largeYobi3 &&
          other.largeYobi4 == largeYobi4 &&
          other.largeYobi5 == largeYobi5 &&
          other.largeYobi6 == largeYobi6 &&
          other.largeYobi7 == largeYobi7 &&
          other.largeYobi8 == largeYobi8 &&
          other.largeYobi9 == largeYobi9 &&
          other.largeYobi10 == largeYobi10);
}

class ClientAspCompanion extends UpdateCompanion<ClientAspEntry> {
  final Value<int> aspId;
  final Value<String> aspName;
  final Value<String> aspColor;
  final Value<String> aspAbbr;
  final Value<int> compId;
  final Value<int> dispOrder;
  final Value<int> industryCd;
  final Value<String> president;
  final Value<String> zipcode;
  final Value<String> prefect;
  final Value<String> city;
  final Value<String> addr;
  final Value<String> bldg;
  final Value<String> telnum;
  final Value<String> faxnum;
  final Value<String> emailaddr;
  final Value<String> hpUrl;
  final Value<int> noCompRcptAlertTime;
  final Value<String> firstScript;
  final Value<String> receptWayMemo;
  final Value<String> remark;
  final Value<int> csvupdId;
  final Value<String> dispFlg;
  final Value<String> custCreatePermKbn;
  final Value<String> contractStartDate;
  final Value<String> contractEndDate;
  final Value<String> aspType;
  final Value<String> yobi1;
  final Value<String> yobi2;
  final Value<String> yobi3;
  final Value<String> yobi4;
  final Value<String> yobi5;
  final Value<String> yobi6;
  final Value<String> yobi7;
  final Value<String> yobi8;
  final Value<String> yobi9;
  final Value<String> yobi10;
  final Value<String> largeYobi1;
  final Value<String> largeYobi2;
  final Value<String> largeYobi3;
  final Value<String> largeYobi4;
  final Value<String> largeYobi5;
  final Value<String> largeYobi6;
  final Value<String> largeYobi7;
  final Value<String> largeYobi8;
  final Value<String> largeYobi9;
  final Value<String> largeYobi10;
  const ClientAspCompanion({
    this.aspId = const Value.absent(),
    this.aspName = const Value.absent(),
    this.aspColor = const Value.absent(),
    this.aspAbbr = const Value.absent(),
    this.compId = const Value.absent(),
    this.dispOrder = const Value.absent(),
    this.industryCd = const Value.absent(),
    this.president = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.prefect = const Value.absent(),
    this.city = const Value.absent(),
    this.addr = const Value.absent(),
    this.bldg = const Value.absent(),
    this.telnum = const Value.absent(),
    this.faxnum = const Value.absent(),
    this.emailaddr = const Value.absent(),
    this.hpUrl = const Value.absent(),
    this.noCompRcptAlertTime = const Value.absent(),
    this.firstScript = const Value.absent(),
    this.receptWayMemo = const Value.absent(),
    this.remark = const Value.absent(),
    this.csvupdId = const Value.absent(),
    this.dispFlg = const Value.absent(),
    this.custCreatePermKbn = const Value.absent(),
    this.contractStartDate = const Value.absent(),
    this.contractEndDate = const Value.absent(),
    this.aspType = const Value.absent(),
    this.yobi1 = const Value.absent(),
    this.yobi2 = const Value.absent(),
    this.yobi3 = const Value.absent(),
    this.yobi4 = const Value.absent(),
    this.yobi5 = const Value.absent(),
    this.yobi6 = const Value.absent(),
    this.yobi7 = const Value.absent(),
    this.yobi8 = const Value.absent(),
    this.yobi9 = const Value.absent(),
    this.yobi10 = const Value.absent(),
    this.largeYobi1 = const Value.absent(),
    this.largeYobi2 = const Value.absent(),
    this.largeYobi3 = const Value.absent(),
    this.largeYobi4 = const Value.absent(),
    this.largeYobi5 = const Value.absent(),
    this.largeYobi6 = const Value.absent(),
    this.largeYobi7 = const Value.absent(),
    this.largeYobi8 = const Value.absent(),
    this.largeYobi9 = const Value.absent(),
    this.largeYobi10 = const Value.absent(),
  });
  ClientAspCompanion copyWith(
      {Value<int> aspId,
      Value<String> aspName,
      Value<String> aspColor,
      Value<String> aspAbbr,
      Value<int> compId,
      Value<int> dispOrder,
      Value<int> industryCd,
      Value<String> president,
      Value<String> zipcode,
      Value<String> prefect,
      Value<String> city,
      Value<String> addr,
      Value<String> bldg,
      Value<String> telnum,
      Value<String> faxnum,
      Value<String> emailaddr,
      Value<String> hpUrl,
      Value<int> noCompRcptAlertTime,
      Value<String> firstScript,
      Value<String> receptWayMemo,
      Value<String> remark,
      Value<int> csvupdId,
      Value<String> dispFlg,
      Value<String> custCreatePermKbn,
      Value<String> contractStartDate,
      Value<String> contractEndDate,
      Value<String> aspType,
      Value<String> yobi1,
      Value<String> yobi2,
      Value<String> yobi3,
      Value<String> yobi4,
      Value<String> yobi5,
      Value<String> yobi6,
      Value<String> yobi7,
      Value<String> yobi8,
      Value<String> yobi9,
      Value<String> yobi10,
      Value<String> largeYobi1,
      Value<String> largeYobi2,
      Value<String> largeYobi3,
      Value<String> largeYobi4,
      Value<String> largeYobi5,
      Value<String> largeYobi6,
      Value<String> largeYobi7,
      Value<String> largeYobi8,
      Value<String> largeYobi9,
      Value<String> largeYobi10}) {
    return ClientAspCompanion(
      aspId: aspId ?? this.aspId,
      aspName: aspName ?? this.aspName,
      aspColor: aspColor ?? this.aspColor,
      aspAbbr: aspAbbr ?? this.aspAbbr,
      compId: compId ?? this.compId,
      dispOrder: dispOrder ?? this.dispOrder,
      industryCd: industryCd ?? this.industryCd,
      president: president ?? this.president,
      zipcode: zipcode ?? this.zipcode,
      prefect: prefect ?? this.prefect,
      city: city ?? this.city,
      addr: addr ?? this.addr,
      bldg: bldg ?? this.bldg,
      telnum: telnum ?? this.telnum,
      faxnum: faxnum ?? this.faxnum,
      emailaddr: emailaddr ?? this.emailaddr,
      hpUrl: hpUrl ?? this.hpUrl,
      noCompRcptAlertTime: noCompRcptAlertTime ?? this.noCompRcptAlertTime,
      firstScript: firstScript ?? this.firstScript,
      receptWayMemo: receptWayMemo ?? this.receptWayMemo,
      remark: remark ?? this.remark,
      csvupdId: csvupdId ?? this.csvupdId,
      dispFlg: dispFlg ?? this.dispFlg,
      custCreatePermKbn: custCreatePermKbn ?? this.custCreatePermKbn,
      contractStartDate: contractStartDate ?? this.contractStartDate,
      contractEndDate: contractEndDate ?? this.contractEndDate,
      aspType: aspType ?? this.aspType,
      yobi1: yobi1 ?? this.yobi1,
      yobi2: yobi2 ?? this.yobi2,
      yobi3: yobi3 ?? this.yobi3,
      yobi4: yobi4 ?? this.yobi4,
      yobi5: yobi5 ?? this.yobi5,
      yobi6: yobi6 ?? this.yobi6,
      yobi7: yobi7 ?? this.yobi7,
      yobi8: yobi8 ?? this.yobi8,
      yobi9: yobi9 ?? this.yobi9,
      yobi10: yobi10 ?? this.yobi10,
      largeYobi1: largeYobi1 ?? this.largeYobi1,
      largeYobi2: largeYobi2 ?? this.largeYobi2,
      largeYobi3: largeYobi3 ?? this.largeYobi3,
      largeYobi4: largeYobi4 ?? this.largeYobi4,
      largeYobi5: largeYobi5 ?? this.largeYobi5,
      largeYobi6: largeYobi6 ?? this.largeYobi6,
      largeYobi7: largeYobi7 ?? this.largeYobi7,
      largeYobi8: largeYobi8 ?? this.largeYobi8,
      largeYobi9: largeYobi9 ?? this.largeYobi9,
      largeYobi10: largeYobi10 ?? this.largeYobi10,
    );
  }
}

class $ClientAspTable extends ClientAsp
    with TableInfo<$ClientAspTable, ClientAspEntry> {
  final GeneratedDatabase _db;
  final String _alias;
  $ClientAspTable(this._db, [this._alias]);
  final VerificationMeta _aspIdMeta = const VerificationMeta('aspId');
  GeneratedIntColumn _aspId;
  @override
  GeneratedIntColumn get aspId => _aspId ??= _constructAspId();
  GeneratedIntColumn _constructAspId() {
    return GeneratedIntColumn(
      'asp_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _aspNameMeta = const VerificationMeta('aspName');
  GeneratedTextColumn _aspName;
  @override
  GeneratedTextColumn get aspName => _aspName ??= _constructAspName();
  GeneratedTextColumn _constructAspName() {
    return GeneratedTextColumn(
      'asp_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _aspColorMeta = const VerificationMeta('aspColor');
  GeneratedTextColumn _aspColor;
  @override
  GeneratedTextColumn get aspColor => _aspColor ??= _constructAspColor();
  GeneratedTextColumn _constructAspColor() {
    return GeneratedTextColumn(
      'asp_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _aspAbbrMeta = const VerificationMeta('aspAbbr');
  GeneratedTextColumn _aspAbbr;
  @override
  GeneratedTextColumn get aspAbbr => _aspAbbr ??= _constructAspAbbr();
  GeneratedTextColumn _constructAspAbbr() {
    return GeneratedTextColumn(
      'asp_abbr',
      $tableName,
      true,
    );
  }

  final VerificationMeta _compIdMeta = const VerificationMeta('compId');
  GeneratedIntColumn _compId;
  @override
  GeneratedIntColumn get compId => _compId ??= _constructCompId();
  GeneratedIntColumn _constructCompId() {
    return GeneratedIntColumn(
      'comp_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dispOrderMeta = const VerificationMeta('dispOrder');
  GeneratedIntColumn _dispOrder;
  @override
  GeneratedIntColumn get dispOrder => _dispOrder ??= _constructDispOrder();
  GeneratedIntColumn _constructDispOrder() {
    return GeneratedIntColumn(
      'disp_order',
      $tableName,
      true,
    );
  }

  final VerificationMeta _industryCdMeta = const VerificationMeta('industryCd');
  GeneratedIntColumn _industryCd;
  @override
  GeneratedIntColumn get industryCd => _industryCd ??= _constructIndustryCd();
  GeneratedIntColumn _constructIndustryCd() {
    return GeneratedIntColumn(
      'industry_cd',
      $tableName,
      true,
    );
  }

  final VerificationMeta _presidentMeta = const VerificationMeta('president');
  GeneratedTextColumn _president;
  @override
  GeneratedTextColumn get president => _president ??= _constructPresident();
  GeneratedTextColumn _constructPresident() {
    return GeneratedTextColumn(
      'president',
      $tableName,
      true,
    );
  }

  final VerificationMeta _zipcodeMeta = const VerificationMeta('zipcode');
  GeneratedTextColumn _zipcode;
  @override
  GeneratedTextColumn get zipcode => _zipcode ??= _constructZipcode();
  GeneratedTextColumn _constructZipcode() {
    return GeneratedTextColumn(
      'zipcode',
      $tableName,
      true,
    );
  }

  final VerificationMeta _prefectMeta = const VerificationMeta('prefect');
  GeneratedTextColumn _prefect;
  @override
  GeneratedTextColumn get prefect => _prefect ??= _constructPrefect();
  GeneratedTextColumn _constructPrefect() {
    return GeneratedTextColumn(
      'prefect',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn(
      'city',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addrMeta = const VerificationMeta('addr');
  GeneratedTextColumn _addr;
  @override
  GeneratedTextColumn get addr => _addr ??= _constructAddr();
  GeneratedTextColumn _constructAddr() {
    return GeneratedTextColumn(
      'addr',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bldgMeta = const VerificationMeta('bldg');
  GeneratedTextColumn _bldg;
  @override
  GeneratedTextColumn get bldg => _bldg ??= _constructBldg();
  GeneratedTextColumn _constructBldg() {
    return GeneratedTextColumn(
      'bldg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _telnumMeta = const VerificationMeta('telnum');
  GeneratedTextColumn _telnum;
  @override
  GeneratedTextColumn get telnum => _telnum ??= _constructTelnum();
  GeneratedTextColumn _constructTelnum() {
    return GeneratedTextColumn(
      'telnum',
      $tableName,
      true,
    );
  }

  final VerificationMeta _faxnumMeta = const VerificationMeta('faxnum');
  GeneratedTextColumn _faxnum;
  @override
  GeneratedTextColumn get faxnum => _faxnum ??= _constructFaxnum();
  GeneratedTextColumn _constructFaxnum() {
    return GeneratedTextColumn(
      'faxnum',
      $tableName,
      true,
    );
  }

  final VerificationMeta _emailaddrMeta = const VerificationMeta('emailaddr');
  GeneratedTextColumn _emailaddr;
  @override
  GeneratedTextColumn get emailaddr => _emailaddr ??= _constructEmailaddr();
  GeneratedTextColumn _constructEmailaddr() {
    return GeneratedTextColumn(
      'emailaddr',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hpUrlMeta = const VerificationMeta('hpUrl');
  GeneratedTextColumn _hpUrl;
  @override
  GeneratedTextColumn get hpUrl => _hpUrl ??= _constructHpUrl();
  GeneratedTextColumn _constructHpUrl() {
    return GeneratedTextColumn(
      'hp_url',
      $tableName,
      true,
    );
  }

  final VerificationMeta _noCompRcptAlertTimeMeta =
      const VerificationMeta('noCompRcptAlertTime');
  GeneratedIntColumn _noCompRcptAlertTime;
  @override
  GeneratedIntColumn get noCompRcptAlertTime =>
      _noCompRcptAlertTime ??= _constructNoCompRcptAlertTime();
  GeneratedIntColumn _constructNoCompRcptAlertTime() {
    return GeneratedIntColumn(
      'no_comp_rcpt_alert_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _firstScriptMeta =
      const VerificationMeta('firstScript');
  GeneratedTextColumn _firstScript;
  @override
  GeneratedTextColumn get firstScript =>
      _firstScript ??= _constructFirstScript();
  GeneratedTextColumn _constructFirstScript() {
    return GeneratedTextColumn(
      'first_script',
      $tableName,
      true,
    );
  }

  final VerificationMeta _receptWayMemoMeta =
      const VerificationMeta('receptWayMemo');
  GeneratedTextColumn _receptWayMemo;
  @override
  GeneratedTextColumn get receptWayMemo =>
      _receptWayMemo ??= _constructReceptWayMemo();
  GeneratedTextColumn _constructReceptWayMemo() {
    return GeneratedTextColumn(
      'recept_way_memo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _remarkMeta = const VerificationMeta('remark');
  GeneratedTextColumn _remark;
  @override
  GeneratedTextColumn get remark => _remark ??= _constructRemark();
  GeneratedTextColumn _constructRemark() {
    return GeneratedTextColumn(
      'remark',
      $tableName,
      true,
    );
  }

  final VerificationMeta _csvupdIdMeta = const VerificationMeta('csvupdId');
  GeneratedIntColumn _csvupdId;
  @override
  GeneratedIntColumn get csvupdId => _csvupdId ??= _constructCsvupdId();
  GeneratedIntColumn _constructCsvupdId() {
    return GeneratedIntColumn(
      'csvupd_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dispFlgMeta = const VerificationMeta('dispFlg');
  GeneratedTextColumn _dispFlg;
  @override
  GeneratedTextColumn get dispFlg => _dispFlg ??= _constructDispFlg();
  GeneratedTextColumn _constructDispFlg() {
    return GeneratedTextColumn(
      'disp_flg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _custCreatePermKbnMeta =
      const VerificationMeta('custCreatePermKbn');
  GeneratedTextColumn _custCreatePermKbn;
  @override
  GeneratedTextColumn get custCreatePermKbn =>
      _custCreatePermKbn ??= _constructCustCreatePermKbn();
  GeneratedTextColumn _constructCustCreatePermKbn() {
    return GeneratedTextColumn(
      'cust_create_perm_kbn',
      $tableName,
      true,
    );
  }

  final VerificationMeta _contractStartDateMeta =
      const VerificationMeta('contractStartDate');
  GeneratedTextColumn _contractStartDate;
  @override
  GeneratedTextColumn get contractStartDate =>
      _contractStartDate ??= _constructContractStartDate();
  GeneratedTextColumn _constructContractStartDate() {
    return GeneratedTextColumn(
      'contract_start_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _contractEndDateMeta =
      const VerificationMeta('contractEndDate');
  GeneratedTextColumn _contractEndDate;
  @override
  GeneratedTextColumn get contractEndDate =>
      _contractEndDate ??= _constructContractEndDate();
  GeneratedTextColumn _constructContractEndDate() {
    return GeneratedTextColumn(
      'contract_end_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aspTypeMeta = const VerificationMeta('aspType');
  GeneratedTextColumn _aspType;
  @override
  GeneratedTextColumn get aspType => _aspType ??= _constructAspType();
  GeneratedTextColumn _constructAspType() {
    return GeneratedTextColumn(
      'asp_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi1Meta = const VerificationMeta('yobi1');
  GeneratedTextColumn _yobi1;
  @override
  GeneratedTextColumn get yobi1 => _yobi1 ??= _constructYobi1();
  GeneratedTextColumn _constructYobi1() {
    return GeneratedTextColumn(
      'yobi1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi2Meta = const VerificationMeta('yobi2');
  GeneratedTextColumn _yobi2;
  @override
  GeneratedTextColumn get yobi2 => _yobi2 ??= _constructYobi2();
  GeneratedTextColumn _constructYobi2() {
    return GeneratedTextColumn(
      'yobi2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi3Meta = const VerificationMeta('yobi3');
  GeneratedTextColumn _yobi3;
  @override
  GeneratedTextColumn get yobi3 => _yobi3 ??= _constructYobi3();
  GeneratedTextColumn _constructYobi3() {
    return GeneratedTextColumn(
      'yobi3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi4Meta = const VerificationMeta('yobi4');
  GeneratedTextColumn _yobi4;
  @override
  GeneratedTextColumn get yobi4 => _yobi4 ??= _constructYobi4();
  GeneratedTextColumn _constructYobi4() {
    return GeneratedTextColumn(
      'yobi4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi5Meta = const VerificationMeta('yobi5');
  GeneratedTextColumn _yobi5;
  @override
  GeneratedTextColumn get yobi5 => _yobi5 ??= _constructYobi5();
  GeneratedTextColumn _constructYobi5() {
    return GeneratedTextColumn(
      'yobi5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi6Meta = const VerificationMeta('yobi6');
  GeneratedTextColumn _yobi6;
  @override
  GeneratedTextColumn get yobi6 => _yobi6 ??= _constructYobi6();
  GeneratedTextColumn _constructYobi6() {
    return GeneratedTextColumn(
      'yobi6',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi7Meta = const VerificationMeta('yobi7');
  GeneratedTextColumn _yobi7;
  @override
  GeneratedTextColumn get yobi7 => _yobi7 ??= _constructYobi7();
  GeneratedTextColumn _constructYobi7() {
    return GeneratedTextColumn(
      'yobi7',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi8Meta = const VerificationMeta('yobi8');
  GeneratedTextColumn _yobi8;
  @override
  GeneratedTextColumn get yobi8 => _yobi8 ??= _constructYobi8();
  GeneratedTextColumn _constructYobi8() {
    return GeneratedTextColumn(
      'yobi8',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi9Meta = const VerificationMeta('yobi9');
  GeneratedTextColumn _yobi9;
  @override
  GeneratedTextColumn get yobi9 => _yobi9 ??= _constructYobi9();
  GeneratedTextColumn _constructYobi9() {
    return GeneratedTextColumn(
      'yobi9',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yobi10Meta = const VerificationMeta('yobi10');
  GeneratedTextColumn _yobi10;
  @override
  GeneratedTextColumn get yobi10 => _yobi10 ??= _constructYobi10();
  GeneratedTextColumn _constructYobi10() {
    return GeneratedTextColumn(
      'yobi10',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi1Meta = const VerificationMeta('largeYobi1');
  GeneratedTextColumn _largeYobi1;
  @override
  GeneratedTextColumn get largeYobi1 => _largeYobi1 ??= _constructLargeYobi1();
  GeneratedTextColumn _constructLargeYobi1() {
    return GeneratedTextColumn(
      'large_yobi1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi2Meta = const VerificationMeta('largeYobi2');
  GeneratedTextColumn _largeYobi2;
  @override
  GeneratedTextColumn get largeYobi2 => _largeYobi2 ??= _constructLargeYobi2();
  GeneratedTextColumn _constructLargeYobi2() {
    return GeneratedTextColumn(
      'large_yobi2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi3Meta = const VerificationMeta('largeYobi3');
  GeneratedTextColumn _largeYobi3;
  @override
  GeneratedTextColumn get largeYobi3 => _largeYobi3 ??= _constructLargeYobi3();
  GeneratedTextColumn _constructLargeYobi3() {
    return GeneratedTextColumn(
      'large_yobi3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi4Meta = const VerificationMeta('largeYobi4');
  GeneratedTextColumn _largeYobi4;
  @override
  GeneratedTextColumn get largeYobi4 => _largeYobi4 ??= _constructLargeYobi4();
  GeneratedTextColumn _constructLargeYobi4() {
    return GeneratedTextColumn(
      'large_yobi4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi5Meta = const VerificationMeta('largeYobi5');
  GeneratedTextColumn _largeYobi5;
  @override
  GeneratedTextColumn get largeYobi5 => _largeYobi5 ??= _constructLargeYobi5();
  GeneratedTextColumn _constructLargeYobi5() {
    return GeneratedTextColumn(
      'large_yobi5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi6Meta = const VerificationMeta('largeYobi6');
  GeneratedTextColumn _largeYobi6;
  @override
  GeneratedTextColumn get largeYobi6 => _largeYobi6 ??= _constructLargeYobi6();
  GeneratedTextColumn _constructLargeYobi6() {
    return GeneratedTextColumn(
      'large_yobi6',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi7Meta = const VerificationMeta('largeYobi7');
  GeneratedTextColumn _largeYobi7;
  @override
  GeneratedTextColumn get largeYobi7 => _largeYobi7 ??= _constructLargeYobi7();
  GeneratedTextColumn _constructLargeYobi7() {
    return GeneratedTextColumn(
      'large_yobi7',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi8Meta = const VerificationMeta('largeYobi8');
  GeneratedTextColumn _largeYobi8;
  @override
  GeneratedTextColumn get largeYobi8 => _largeYobi8 ??= _constructLargeYobi8();
  GeneratedTextColumn _constructLargeYobi8() {
    return GeneratedTextColumn(
      'large_yobi8',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi9Meta = const VerificationMeta('largeYobi9');
  GeneratedTextColumn _largeYobi9;
  @override
  GeneratedTextColumn get largeYobi9 => _largeYobi9 ??= _constructLargeYobi9();
  GeneratedTextColumn _constructLargeYobi9() {
    return GeneratedTextColumn(
      'large_yobi9',
      $tableName,
      true,
    );
  }

  final VerificationMeta _largeYobi10Meta =
      const VerificationMeta('largeYobi10');
  GeneratedTextColumn _largeYobi10;
  @override
  GeneratedTextColumn get largeYobi10 =>
      _largeYobi10 ??= _constructLargeYobi10();
  GeneratedTextColumn _constructLargeYobi10() {
    return GeneratedTextColumn(
      'large_yobi10',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        aspId,
        aspName,
        aspColor,
        aspAbbr,
        compId,
        dispOrder,
        industryCd,
        president,
        zipcode,
        prefect,
        city,
        addr,
        bldg,
        telnum,
        faxnum,
        emailaddr,
        hpUrl,
        noCompRcptAlertTime,
        firstScript,
        receptWayMemo,
        remark,
        csvupdId,
        dispFlg,
        custCreatePermKbn,
        contractStartDate,
        contractEndDate,
        aspType,
        yobi1,
        yobi2,
        yobi3,
        yobi4,
        yobi5,
        yobi6,
        yobi7,
        yobi8,
        yobi9,
        yobi10,
        largeYobi1,
        largeYobi2,
        largeYobi3,
        largeYobi4,
        largeYobi5,
        largeYobi6,
        largeYobi7,
        largeYobi8,
        largeYobi9,
        largeYobi10
      ];
  @override
  $ClientAspTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'client_asp';
  @override
  final String actualTableName = 'client_asp';
  @override
  VerificationContext validateIntegrity(ClientAspCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.aspId.present) {
      context.handle(
          _aspIdMeta, aspId.isAcceptableValue(d.aspId.value, _aspIdMeta));
    } else if (aspId.isRequired && isInserting) {
      context.missing(_aspIdMeta);
    }
    if (d.aspName.present) {
      context.handle(_aspNameMeta,
          aspName.isAcceptableValue(d.aspName.value, _aspNameMeta));
    } else if (aspName.isRequired && isInserting) {
      context.missing(_aspNameMeta);
    }
    if (d.aspColor.present) {
      context.handle(_aspColorMeta,
          aspColor.isAcceptableValue(d.aspColor.value, _aspColorMeta));
    } else if (aspColor.isRequired && isInserting) {
      context.missing(_aspColorMeta);
    }
    if (d.aspAbbr.present) {
      context.handle(_aspAbbrMeta,
          aspAbbr.isAcceptableValue(d.aspAbbr.value, _aspAbbrMeta));
    } else if (aspAbbr.isRequired && isInserting) {
      context.missing(_aspAbbrMeta);
    }
    if (d.compId.present) {
      context.handle(
          _compIdMeta, compId.isAcceptableValue(d.compId.value, _compIdMeta));
    } else if (compId.isRequired && isInserting) {
      context.missing(_compIdMeta);
    }
    if (d.dispOrder.present) {
      context.handle(_dispOrderMeta,
          dispOrder.isAcceptableValue(d.dispOrder.value, _dispOrderMeta));
    } else if (dispOrder.isRequired && isInserting) {
      context.missing(_dispOrderMeta);
    }
    if (d.industryCd.present) {
      context.handle(_industryCdMeta,
          industryCd.isAcceptableValue(d.industryCd.value, _industryCdMeta));
    } else if (industryCd.isRequired && isInserting) {
      context.missing(_industryCdMeta);
    }
    if (d.president.present) {
      context.handle(_presidentMeta,
          president.isAcceptableValue(d.president.value, _presidentMeta));
    } else if (president.isRequired && isInserting) {
      context.missing(_presidentMeta);
    }
    if (d.zipcode.present) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableValue(d.zipcode.value, _zipcodeMeta));
    } else if (zipcode.isRequired && isInserting) {
      context.missing(_zipcodeMeta);
    }
    if (d.prefect.present) {
      context.handle(_prefectMeta,
          prefect.isAcceptableValue(d.prefect.value, _prefectMeta));
    } else if (prefect.isRequired && isInserting) {
      context.missing(_prefectMeta);
    }
    if (d.city.present) {
      context.handle(
          _cityMeta, city.isAcceptableValue(d.city.value, _cityMeta));
    } else if (city.isRequired && isInserting) {
      context.missing(_cityMeta);
    }
    if (d.addr.present) {
      context.handle(
          _addrMeta, addr.isAcceptableValue(d.addr.value, _addrMeta));
    } else if (addr.isRequired && isInserting) {
      context.missing(_addrMeta);
    }
    if (d.bldg.present) {
      context.handle(
          _bldgMeta, bldg.isAcceptableValue(d.bldg.value, _bldgMeta));
    } else if (bldg.isRequired && isInserting) {
      context.missing(_bldgMeta);
    }
    if (d.telnum.present) {
      context.handle(
          _telnumMeta, telnum.isAcceptableValue(d.telnum.value, _telnumMeta));
    } else if (telnum.isRequired && isInserting) {
      context.missing(_telnumMeta);
    }
    if (d.faxnum.present) {
      context.handle(
          _faxnumMeta, faxnum.isAcceptableValue(d.faxnum.value, _faxnumMeta));
    } else if (faxnum.isRequired && isInserting) {
      context.missing(_faxnumMeta);
    }
    if (d.emailaddr.present) {
      context.handle(_emailaddrMeta,
          emailaddr.isAcceptableValue(d.emailaddr.value, _emailaddrMeta));
    } else if (emailaddr.isRequired && isInserting) {
      context.missing(_emailaddrMeta);
    }
    if (d.hpUrl.present) {
      context.handle(
          _hpUrlMeta, hpUrl.isAcceptableValue(d.hpUrl.value, _hpUrlMeta));
    } else if (hpUrl.isRequired && isInserting) {
      context.missing(_hpUrlMeta);
    }
    if (d.noCompRcptAlertTime.present) {
      context.handle(
          _noCompRcptAlertTimeMeta,
          noCompRcptAlertTime.isAcceptableValue(
              d.noCompRcptAlertTime.value, _noCompRcptAlertTimeMeta));
    } else if (noCompRcptAlertTime.isRequired && isInserting) {
      context.missing(_noCompRcptAlertTimeMeta);
    }
    if (d.firstScript.present) {
      context.handle(_firstScriptMeta,
          firstScript.isAcceptableValue(d.firstScript.value, _firstScriptMeta));
    } else if (firstScript.isRequired && isInserting) {
      context.missing(_firstScriptMeta);
    }
    if (d.receptWayMemo.present) {
      context.handle(
          _receptWayMemoMeta,
          receptWayMemo.isAcceptableValue(
              d.receptWayMemo.value, _receptWayMemoMeta));
    } else if (receptWayMemo.isRequired && isInserting) {
      context.missing(_receptWayMemoMeta);
    }
    if (d.remark.present) {
      context.handle(
          _remarkMeta, remark.isAcceptableValue(d.remark.value, _remarkMeta));
    } else if (remark.isRequired && isInserting) {
      context.missing(_remarkMeta);
    }
    if (d.csvupdId.present) {
      context.handle(_csvupdIdMeta,
          csvupdId.isAcceptableValue(d.csvupdId.value, _csvupdIdMeta));
    } else if (csvupdId.isRequired && isInserting) {
      context.missing(_csvupdIdMeta);
    }
    if (d.dispFlg.present) {
      context.handle(_dispFlgMeta,
          dispFlg.isAcceptableValue(d.dispFlg.value, _dispFlgMeta));
    } else if (dispFlg.isRequired && isInserting) {
      context.missing(_dispFlgMeta);
    }
    if (d.custCreatePermKbn.present) {
      context.handle(
          _custCreatePermKbnMeta,
          custCreatePermKbn.isAcceptableValue(
              d.custCreatePermKbn.value, _custCreatePermKbnMeta));
    } else if (custCreatePermKbn.isRequired && isInserting) {
      context.missing(_custCreatePermKbnMeta);
    }
    if (d.contractStartDate.present) {
      context.handle(
          _contractStartDateMeta,
          contractStartDate.isAcceptableValue(
              d.contractStartDate.value, _contractStartDateMeta));
    } else if (contractStartDate.isRequired && isInserting) {
      context.missing(_contractStartDateMeta);
    }
    if (d.contractEndDate.present) {
      context.handle(
          _contractEndDateMeta,
          contractEndDate.isAcceptableValue(
              d.contractEndDate.value, _contractEndDateMeta));
    } else if (contractEndDate.isRequired && isInserting) {
      context.missing(_contractEndDateMeta);
    }
    if (d.aspType.present) {
      context.handle(_aspTypeMeta,
          aspType.isAcceptableValue(d.aspType.value, _aspTypeMeta));
    } else if (aspType.isRequired && isInserting) {
      context.missing(_aspTypeMeta);
    }
    if (d.yobi1.present) {
      context.handle(
          _yobi1Meta, yobi1.isAcceptableValue(d.yobi1.value, _yobi1Meta));
    } else if (yobi1.isRequired && isInserting) {
      context.missing(_yobi1Meta);
    }
    if (d.yobi2.present) {
      context.handle(
          _yobi2Meta, yobi2.isAcceptableValue(d.yobi2.value, _yobi2Meta));
    } else if (yobi2.isRequired && isInserting) {
      context.missing(_yobi2Meta);
    }
    if (d.yobi3.present) {
      context.handle(
          _yobi3Meta, yobi3.isAcceptableValue(d.yobi3.value, _yobi3Meta));
    } else if (yobi3.isRequired && isInserting) {
      context.missing(_yobi3Meta);
    }
    if (d.yobi4.present) {
      context.handle(
          _yobi4Meta, yobi4.isAcceptableValue(d.yobi4.value, _yobi4Meta));
    } else if (yobi4.isRequired && isInserting) {
      context.missing(_yobi4Meta);
    }
    if (d.yobi5.present) {
      context.handle(
          _yobi5Meta, yobi5.isAcceptableValue(d.yobi5.value, _yobi5Meta));
    } else if (yobi5.isRequired && isInserting) {
      context.missing(_yobi5Meta);
    }
    if (d.yobi6.present) {
      context.handle(
          _yobi6Meta, yobi6.isAcceptableValue(d.yobi6.value, _yobi6Meta));
    } else if (yobi6.isRequired && isInserting) {
      context.missing(_yobi6Meta);
    }
    if (d.yobi7.present) {
      context.handle(
          _yobi7Meta, yobi7.isAcceptableValue(d.yobi7.value, _yobi7Meta));
    } else if (yobi7.isRequired && isInserting) {
      context.missing(_yobi7Meta);
    }
    if (d.yobi8.present) {
      context.handle(
          _yobi8Meta, yobi8.isAcceptableValue(d.yobi8.value, _yobi8Meta));
    } else if (yobi8.isRequired && isInserting) {
      context.missing(_yobi8Meta);
    }
    if (d.yobi9.present) {
      context.handle(
          _yobi9Meta, yobi9.isAcceptableValue(d.yobi9.value, _yobi9Meta));
    } else if (yobi9.isRequired && isInserting) {
      context.missing(_yobi9Meta);
    }
    if (d.yobi10.present) {
      context.handle(
          _yobi10Meta, yobi10.isAcceptableValue(d.yobi10.value, _yobi10Meta));
    } else if (yobi10.isRequired && isInserting) {
      context.missing(_yobi10Meta);
    }
    if (d.largeYobi1.present) {
      context.handle(_largeYobi1Meta,
          largeYobi1.isAcceptableValue(d.largeYobi1.value, _largeYobi1Meta));
    } else if (largeYobi1.isRequired && isInserting) {
      context.missing(_largeYobi1Meta);
    }
    if (d.largeYobi2.present) {
      context.handle(_largeYobi2Meta,
          largeYobi2.isAcceptableValue(d.largeYobi2.value, _largeYobi2Meta));
    } else if (largeYobi2.isRequired && isInserting) {
      context.missing(_largeYobi2Meta);
    }
    if (d.largeYobi3.present) {
      context.handle(_largeYobi3Meta,
          largeYobi3.isAcceptableValue(d.largeYobi3.value, _largeYobi3Meta));
    } else if (largeYobi3.isRequired && isInserting) {
      context.missing(_largeYobi3Meta);
    }
    if (d.largeYobi4.present) {
      context.handle(_largeYobi4Meta,
          largeYobi4.isAcceptableValue(d.largeYobi4.value, _largeYobi4Meta));
    } else if (largeYobi4.isRequired && isInserting) {
      context.missing(_largeYobi4Meta);
    }
    if (d.largeYobi5.present) {
      context.handle(_largeYobi5Meta,
          largeYobi5.isAcceptableValue(d.largeYobi5.value, _largeYobi5Meta));
    } else if (largeYobi5.isRequired && isInserting) {
      context.missing(_largeYobi5Meta);
    }
    if (d.largeYobi6.present) {
      context.handle(_largeYobi6Meta,
          largeYobi6.isAcceptableValue(d.largeYobi6.value, _largeYobi6Meta));
    } else if (largeYobi6.isRequired && isInserting) {
      context.missing(_largeYobi6Meta);
    }
    if (d.largeYobi7.present) {
      context.handle(_largeYobi7Meta,
          largeYobi7.isAcceptableValue(d.largeYobi7.value, _largeYobi7Meta));
    } else if (largeYobi7.isRequired && isInserting) {
      context.missing(_largeYobi7Meta);
    }
    if (d.largeYobi8.present) {
      context.handle(_largeYobi8Meta,
          largeYobi8.isAcceptableValue(d.largeYobi8.value, _largeYobi8Meta));
    } else if (largeYobi8.isRequired && isInserting) {
      context.missing(_largeYobi8Meta);
    }
    if (d.largeYobi9.present) {
      context.handle(_largeYobi9Meta,
          largeYobi9.isAcceptableValue(d.largeYobi9.value, _largeYobi9Meta));
    } else if (largeYobi9.isRequired && isInserting) {
      context.missing(_largeYobi9Meta);
    }
    if (d.largeYobi10.present) {
      context.handle(_largeYobi10Meta,
          largeYobi10.isAcceptableValue(d.largeYobi10.value, _largeYobi10Meta));
    } else if (largeYobi10.isRequired && isInserting) {
      context.missing(_largeYobi10Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {aspId};
  @override
  ClientAspEntry map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ClientAspEntry.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ClientAspCompanion d) {
    final map = <String, Variable>{};
    if (d.aspId.present) {
      map['asp_id'] = Variable<int, IntType>(d.aspId.value);
    }
    if (d.aspName.present) {
      map['asp_name'] = Variable<String, StringType>(d.aspName.value);
    }
    if (d.aspColor.present) {
      map['asp_color'] = Variable<String, StringType>(d.aspColor.value);
    }
    if (d.aspAbbr.present) {
      map['asp_abbr'] = Variable<String, StringType>(d.aspAbbr.value);
    }
    if (d.compId.present) {
      map['comp_id'] = Variable<int, IntType>(d.compId.value);
    }
    if (d.dispOrder.present) {
      map['disp_order'] = Variable<int, IntType>(d.dispOrder.value);
    }
    if (d.industryCd.present) {
      map['industry_cd'] = Variable<int, IntType>(d.industryCd.value);
    }
    if (d.president.present) {
      map['president'] = Variable<String, StringType>(d.president.value);
    }
    if (d.zipcode.present) {
      map['zipcode'] = Variable<String, StringType>(d.zipcode.value);
    }
    if (d.prefect.present) {
      map['prefect'] = Variable<String, StringType>(d.prefect.value);
    }
    if (d.city.present) {
      map['city'] = Variable<String, StringType>(d.city.value);
    }
    if (d.addr.present) {
      map['addr'] = Variable<String, StringType>(d.addr.value);
    }
    if (d.bldg.present) {
      map['bldg'] = Variable<String, StringType>(d.bldg.value);
    }
    if (d.telnum.present) {
      map['telnum'] = Variable<String, StringType>(d.telnum.value);
    }
    if (d.faxnum.present) {
      map['faxnum'] = Variable<String, StringType>(d.faxnum.value);
    }
    if (d.emailaddr.present) {
      map['emailaddr'] = Variable<String, StringType>(d.emailaddr.value);
    }
    if (d.hpUrl.present) {
      map['hp_url'] = Variable<String, StringType>(d.hpUrl.value);
    }
    if (d.noCompRcptAlertTime.present) {
      map['no_comp_rcpt_alert_time'] =
          Variable<int, IntType>(d.noCompRcptAlertTime.value);
    }
    if (d.firstScript.present) {
      map['first_script'] = Variable<String, StringType>(d.firstScript.value);
    }
    if (d.receptWayMemo.present) {
      map['recept_way_memo'] =
          Variable<String, StringType>(d.receptWayMemo.value);
    }
    if (d.remark.present) {
      map['remark'] = Variable<String, StringType>(d.remark.value);
    }
    if (d.csvupdId.present) {
      map['csvupd_id'] = Variable<int, IntType>(d.csvupdId.value);
    }
    if (d.dispFlg.present) {
      map['disp_flg'] = Variable<String, StringType>(d.dispFlg.value);
    }
    if (d.custCreatePermKbn.present) {
      map['cust_create_perm_kbn'] =
          Variable<String, StringType>(d.custCreatePermKbn.value);
    }
    if (d.contractStartDate.present) {
      map['contract_start_date'] =
          Variable<String, StringType>(d.contractStartDate.value);
    }
    if (d.contractEndDate.present) {
      map['contract_end_date'] =
          Variable<String, StringType>(d.contractEndDate.value);
    }
    if (d.aspType.present) {
      map['asp_type'] = Variable<String, StringType>(d.aspType.value);
    }
    if (d.yobi1.present) {
      map['yobi1'] = Variable<String, StringType>(d.yobi1.value);
    }
    if (d.yobi2.present) {
      map['yobi2'] = Variable<String, StringType>(d.yobi2.value);
    }
    if (d.yobi3.present) {
      map['yobi3'] = Variable<String, StringType>(d.yobi3.value);
    }
    if (d.yobi4.present) {
      map['yobi4'] = Variable<String, StringType>(d.yobi4.value);
    }
    if (d.yobi5.present) {
      map['yobi5'] = Variable<String, StringType>(d.yobi5.value);
    }
    if (d.yobi6.present) {
      map['yobi6'] = Variable<String, StringType>(d.yobi6.value);
    }
    if (d.yobi7.present) {
      map['yobi7'] = Variable<String, StringType>(d.yobi7.value);
    }
    if (d.yobi8.present) {
      map['yobi8'] = Variable<String, StringType>(d.yobi8.value);
    }
    if (d.yobi9.present) {
      map['yobi9'] = Variable<String, StringType>(d.yobi9.value);
    }
    if (d.yobi10.present) {
      map['yobi10'] = Variable<String, StringType>(d.yobi10.value);
    }
    if (d.largeYobi1.present) {
      map['large_yobi1'] = Variable<String, StringType>(d.largeYobi1.value);
    }
    if (d.largeYobi2.present) {
      map['large_yobi2'] = Variable<String, StringType>(d.largeYobi2.value);
    }
    if (d.largeYobi3.present) {
      map['large_yobi3'] = Variable<String, StringType>(d.largeYobi3.value);
    }
    if (d.largeYobi4.present) {
      map['large_yobi4'] = Variable<String, StringType>(d.largeYobi4.value);
    }
    if (d.largeYobi5.present) {
      map['large_yobi5'] = Variable<String, StringType>(d.largeYobi5.value);
    }
    if (d.largeYobi6.present) {
      map['large_yobi6'] = Variable<String, StringType>(d.largeYobi6.value);
    }
    if (d.largeYobi7.present) {
      map['large_yobi7'] = Variable<String, StringType>(d.largeYobi7.value);
    }
    if (d.largeYobi8.present) {
      map['large_yobi8'] = Variable<String, StringType>(d.largeYobi8.value);
    }
    if (d.largeYobi9.present) {
      map['large_yobi9'] = Variable<String, StringType>(d.largeYobi9.value);
    }
    if (d.largeYobi10.present) {
      map['large_yobi10'] = Variable<String, StringType>(d.largeYobi10.value);
    }
    return map;
  }

  @override
  $ClientAspTable createAlias(String alias) {
    return $ClientAspTable(_db, alias);
  }
}

abstract class _$DataBase extends GeneratedDatabase {
  _$DataBase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $ClientAspTable _clientAsp;
  $ClientAspTable get clientAsp => _clientAsp ??= $ClientAspTable(this);
  @override
  List<TableInfo> get allTables => [clientAsp];
}
