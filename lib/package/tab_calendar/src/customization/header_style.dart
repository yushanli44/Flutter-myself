//  Copyright (c) 2019 Aleksander Woźniak
//  Licensed under Apache License v2.0

import 'package:flutter/material.dart';

import '../../table_calendar.dart';

/// Class containing styling and configuration of `TableCalendar`'s header.
class HeaderStyle {
  /// Responsible for making title Text centered.
  final bool centerHeaderTitle;

  /// Responsible for FormatButton visibility.
  final bool formatButtonVisible;

  /// Controls the text inside FormatButton.
  /// * `true` - the button will show next CalendarFormat
  /// * `false` - the button will show current CalendarFormat
  final bool formatButtonShowsNext;

  /// Use to customize header's title text (eg. with different `DateFormat`).
  /// You can use `String` transformations to further customize the text.
  /// Defaults to simple `'yMMMM'` format (eg. January 2019, February 2019, March 2019, etc.).
  ///
  /// Example usage:
  /// ```dart
  /// titleTextBuilder: (date, locale) => DateFormat.yM(locale).format(date),
  /// ```
  final TextBuilder titleTextBuilder;

  /// Style for title Text (month-year) displayed in header.
  final TextStyle titleTextStyle;

  /// Style for FormatButton Text.
  final TextStyle formatButtonTextStyle;

  /// Background Decoration for FormatButton.
  final Decoration formatButtonDecoration;

  /// Inside Padding for FormatButton.
  final EdgeInsets formatButtonPadding;

  final EdgeInsets dehazePadding;

  /// Inside Padding for left chevron.
  final EdgeInsets leftChevronPadding;

  /// Inside Padding for right chevron.
  final EdgeInsets rightChevronPadding;

  /// Outside Margin for left chevron.
  final EdgeInsets leftChevronMargin;

  final EdgeInsets dehazeMargin;

  /// Outside Margin for right chevron.
  final EdgeInsets rightChevronMargin;

  /// Icon used for left chevron.
  /// Defaults to black `Icons.chevron_left`.
  final Icon leftChevronIcon;

  /// Icon used for right chevron.
  /// Defaults to black `Icons.chevron_right`.
  final Icon rightChevronIcon;

  final Icon dehazeIcon;

  const HeaderStyle({
    this.centerHeaderTitle = false,
    this.formatButtonVisible = true,
    this.formatButtonShowsNext = true,
    this.titleTextBuilder,
    this.titleTextStyle =
        const TextStyle(fontSize: 14.0, color: Colors.white, height: 20 / 14, fontWeight: FontWeight.w500),
    this.formatButtonTextStyle = const TextStyle(),
    this.formatButtonDecoration = const BoxDecoration(
      border: Border(top: BorderSide(), bottom: BorderSide(), left: BorderSide(), right: BorderSide()),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    this.formatButtonPadding = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    this.dehazePadding = const EdgeInsets.all(10.0),
    this.leftChevronPadding = const EdgeInsets.all(0.0),
    this.rightChevronPadding = const EdgeInsets.all(10.0),
    this.dehazeMargin = const EdgeInsets.symmetric(horizontal: 6.0),
    this.leftChevronMargin = const EdgeInsets.symmetric(horizontal: 8.0),
    this.rightChevronMargin = const EdgeInsets.symmetric(horizontal: 8.0),
    this.leftChevronIcon = const Icon(Icons.expand_less, color: Colors.white),
    this.rightChevronIcon = const Icon(Icons.expand_more, color: Colors.white),
    this.dehazeIcon = const Icon(Icons.dehaze, color: Colors.white),
  });
}
