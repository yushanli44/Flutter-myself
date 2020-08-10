//  Copyright (c) 2019 Aleksander Woźniak
//  Licensed under Apache License v2.0

import 'package:flutter/material.dart';

import '../customization/calendar_style.dart';

class CellWidget extends StatelessWidget {
  final String text;
  final bool isUnavailable;
  final bool isSelected;
  final bool isToday;
  final bool isWeekend;
  final bool isOutsideMonth;
  final bool isHoliday;
  final CalendarStyle calendarStyle;

  const CellWidget({
    Key key,
    @required this.text,
    this.isUnavailable = false,
    this.isSelected = false,
    this.isToday = false,
    this.isWeekend = false,
    this.isOutsideMonth = false,
    this.isHoliday = false,
    @required this.calendarStyle,
  })  : assert(text != null),
        assert(calendarStyle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: _buildCellDecoration(),
      padding: EdgeInsets.only(bottom: 8),
      margin: const EdgeInsets.all(2.5),
      alignment: Alignment.center,
      child: Text(
        text,
        style: _buildCellTextStyle(),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Decoration _buildCellDecoration() {
    if (isSelected && calendarStyle.renderSelectedFirst) {
      return BoxDecoration(shape: BoxShape.circle, color: calendarStyle.selectedColor);
    } else if (isSelected) {
      return BoxDecoration(shape: BoxShape.circle, color: calendarStyle.selectedColor);
    } else {
      return BoxDecoration(shape: BoxShape.circle);
    }
  }

  TextStyle _buildCellTextStyle() {
    if (isUnavailable) {
      return calendarStyle.unavailableStyle;
    } else if (isSelected && calendarStyle.renderSelectedFirst) {
      return calendarStyle.selectedStyle;
    } else if (isSelected) {
      return calendarStyle.selectedStyle;
    } else if (isOutsideMonth && isHoliday) {
      return calendarStyle.outsideHolidayStyle;
    } else if (isHoliday) {
      return calendarStyle.holidayStyle;
    } else if (isOutsideMonth && isWeekend) {
      return calendarStyle.outsideWeekendStyle;
    } else if (isOutsideMonth) {
      return calendarStyle.outsideStyle;
    } else if (isWeekend) {
      return calendarStyle.weekendStyle;
    } else if (isToday) {
      return calendarStyle.todayStyle;
    } else {
      return calendarStyle.weekdayStyle;
    }
  }
}
