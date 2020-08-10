//  Copyright (c) 2019 Aleksander Woźniak
//  Licensed under Apache License v2.0

library table_calendar;

import 'package:crm_mobile/package/date_picker/flutter_datetime_picker.dart';
import 'package:crm_mobile/package/date_picker/src/datetime_picker_theme.dart';
import 'package:crm_mobile/package/date_picker/src/i18n_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'package:crm_mobile/common/util/date_time_util.dart';
import 'src/customization/customization.dart';
import 'src/logic/calendar_logic.dart';
import 'src/widgets/widgets.dart';

export 'src/customization/customization.dart';

/// Callback exposing currently selected day.
typedef void OnDaySelected(DateTime day, List events);

typedef void OnMenuTapped();

typedef DateTime DateChangedCallback(DateTime time);

/// Callback exposing currently visible days (first and last of them), as well as current `CalendarFormat`.
typedef void OnVisibleDaysChanged(DateTime first, DateTime last, CalendarFormat format);

/// Builder signature for any text that can be localized and formatted with `DateFormat`.
typedef String TextBuilder(DateTime date, dynamic locale);

/// Format to display the `TableCalendar` with.
enum CalendarFormat { month, twoWeeks, week }

/// Available animations to update the `CalendarFormat` with.
enum FormatAnimation { slide, scale }

/// Available day of week formats. `TableCalendar` will start the week with chosen day.
/// * `StartingDayOfWeek.monday`: Monday - Sunday
/// * `StartingDayOfWeek.sunday`: Sunday - Saturday
enum StartingDayOfWeek { monday, sunday }

/// Gestures available to interal `TableCalendar`'s logic.
enum AvailableGestures { none, verticalSwipe, horizontalSwipe, all }

/// Highly customizable, feature-packed Flutter Calendar with gestures, animations and multiple formats.
class TableCalendar extends StatefulWidget {
  /// Locale to format `TableCalendar` dates with, for example: `'en_US'`.
  ///
  /// If nothing is provided, a default locale will be used.weekday
  final dynamic locale;

  /// Contains a `List` of objects (eg. events) assigned to particular `DateTime`s.
  /// Each `DateTime` inside this `Map` should get its own `List` of above mentioned objects.
  final Map<DateTime, List> events;

  /// `List`s of holidays associated to particular `DateTime`s.
  /// This property allows you to provide custom holiday rules.
  final Map<DateTime, List> holidays;

  /// Called whenever any day gets tapped.
  final OnDaySelected onDaySelected;

  /// Called whenever any unavailable day gets tapped.
  /// Replaces `onDaySelected` for those days.
  final VoidCallback onUnavailableDaySelected;
  final DateChangedCallback onDateConfirm;
  final DateChangedCallback onDown;
  final DateChangedCallback onUp;

  /// Called whenever the range of visible days changes.
  final OnVisibleDaysChanged onVisibleDaysChanged;

  final OnMenuTapped onMenuTapped;

  /// Initially selected DateTime. Usually it will be `DateTime.now()`.
  /// This property can be used to programmatically select a new date.
  ///
  /// If `TableCalendar` Widget gets rebuilt with a different `selectedDay` than previously,
  /// `onDaySelected` callback will run.
  ///
  /// To animate programmatic selection, use `animateProgSelectedDay` property.
  final DateTime selectedDay;

  /// The first day of `TableCalendar`.
  /// Days before it will use `unavailableStyle` and run `onUnavailableDaySelected` callback.
  final DateTime startDay;

  /// The last day of `TableCalendar`.
  /// Days after it will use `unavailableStyle` and run `onUnavailableDaySelected` callback.
  final DateTime endDay;

  /// `CalendarFormat` which will be displayed first.
  final CalendarFormat initialCalendarFormat;

  /// `CalendarFormat` which overrides any internal logic.
  /// Use if you need total programmatic control over `TableCalendar`'s format.
  ///
  /// Makes `initialCalendarFormat` and `availableCalendarFormats` obsolete.
  final CalendarFormat forcedCalendarFormat;

  /// `Map` of `CalendarFormat`s and `String` names associated with them.
  /// Those `CalendarFormat`s will be used by internal logic to manage displayed format.
  ///
  /// To ensure proper vertical Swipe behavior, `CalendarFormat`s should be in descending order (eg. from biggest to smallest).
  ///
  /// For example:
  /// ```dart
  /// availableCalendarFormats: const {
  ///   CalendarFormat.month: 'Month',
  ///   CalendarFormat.week: 'Week',
  /// }
  /// ```
  final Map<CalendarFormat, String> availableCalendarFormats;

  /// Used to show/hide Header.
  final bool headerVisible;

  /// Used for setting the height of `TableCalendar`'s rows.
  final double rowHeight;

  /// Used to enable animations for programmatically set `selectedDay`.
  /// Most of the time it should be `false`.
  final bool animateProgSelectedDay;

  /// Animation to run when `CalendarFormat` gets changed.
  final FormatAnimation formatAnimation;

  /// `TableCalendar` will start weeks with provided day.
  /// Use `StartingDayOfWeek.monday` for Monday - Sunday week format.
  /// Use `StartingDayOfWeek.sunday` for Sunday - Saturday week format.
  final StartingDayOfWeek startingDayOfWeek;

  /// `HitTestBehavior` for every day cell inside `TableCalendar`.
  final HitTestBehavior dayHitTestBehavior;

  /// Specify Gestures available to `TableCalendar`.
  /// If `AvailableGestures.none` is used, the Calendar will only be interactive via buttons.
  final AvailableGestures availableGestures;

  /// Configuration for vertical Swipe detector.
  final SimpleSwipeConfig simpleSwipeConfig;

  /// Style for `TableCalendar`'s content.
  final CalendarStyle calendarStyle;

  /// Style for DaysOfWeek displayed between `TableCalendar`'s Header and content.
  final DaysOfWeekStyle daysOfWeekStyle;

  /// Style for `TableCalendar`'s Header.
  final HeaderStyle headerStyle;

  /// Set of Builders for `TableCalendar` to work with.
  final CalendarBuilders builders;

  TableCalendar({
    Key key,
    this.locale,
    this.events = const {},
    this.holidays = const {},
    this.onMenuTapped,
    this.onDaySelected,
    this.onUnavailableDaySelected,
    this.onVisibleDaysChanged,
    this.selectedDay,
    this.onDateConfirm,
    this.onDown,
    this.onUp,
    this.startDay,
    this.endDay,
    this.initialCalendarFormat = CalendarFormat.month,
    this.forcedCalendarFormat,
    this.availableCalendarFormats = const {
      CalendarFormat.month: 'Month',
      CalendarFormat.twoWeeks: '2 weeks',
      CalendarFormat.week: 'Week',
    },
    this.headerVisible = true,
    this.rowHeight,
    this.animateProgSelectedDay = false,
    this.formatAnimation = FormatAnimation.slide,
    this.startingDayOfWeek = StartingDayOfWeek.sunday,
    this.dayHitTestBehavior = HitTestBehavior.deferToChild,
    this.availableGestures = AvailableGestures.all,
    this.simpleSwipeConfig = const SimpleSwipeConfig(
      verticalThreshold: 25.0,
      swipeDetectionBehavior: SwipeDetectionBehavior.continuousDistinct,
    ),
    this.calendarStyle = const CalendarStyle(),
    this.daysOfWeekStyle = const DaysOfWeekStyle(),
    this.headerStyle = const HeaderStyle(),
    this.builders = const CalendarBuilders(),
  })  : assert(availableCalendarFormats.keys.contains(initialCalendarFormat)),
        assert(availableCalendarFormats.length <= CalendarFormat.values.length),
        super(key: key);

  @override
  _TableCalendarState createState() {
    return _TableCalendarState();
  }
}

class _TableCalendarState extends State<TableCalendar> with SingleTickerProviderStateMixin {
  CalendarLogic _calendarLogic;

  @override
  void initState() {
    super.initState();
    _calendarLogic = CalendarLogic(
      widget.availableCalendarFormats,
      widget.startingDayOfWeek,
      widget.headerStyle.formatButtonShowsNext,
      initialFormat: widget.initialCalendarFormat,
      initialDay: widget.selectedDay,
      onVisibleDaysChanged: widget.onVisibleDaysChanged,
      includeInvisibleDays: widget.calendarStyle.outsideDaysVisible,
    );
  }

  @override
  void didUpdateWidget(TableCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDay != null && widget.selectedDay != null) {
      if (!DateTimeUtil.isSameDay(oldWidget.selectedDay, widget.selectedDay)) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          setState(() {
            final runCallback = _calendarLogic.setSelectedDay(
              widget.selectedDay,
              isAnimated: widget.animateProgSelectedDay,
              isProgrammatic: true,
            );

            if (runCallback && widget.onDaySelected != null) {
              final key = widget.events.keys.firstWhere(
                (it) => DateTimeUtil.isSameDay(it, widget.selectedDay),
                orElse: () => null,
              );
              widget.onDaySelected(widget.selectedDay, widget.events[key] ?? []);
            }
          });
        });
      }
    }
  }

  @override
  void dispose() {
    _calendarLogic.dispose();
    super.dispose();
  }

  void _selectPrevious() {
    setState(() {
      if (widget.onUp != null) {
        _selectDate(widget.onUp(_calendarLogic.selectPrevious()));
      }
    });
  }

  void _selectNext() {
    setState(() {
      if (widget.onDown != null) {
        _selectDate(widget.onDown(_calendarLogic.selectNext()));
      }
    });
  }

  void _selectDate(DateTime date) {
    setState(() {
      _calendarLogic.setSelectedDay(date);

      if (widget.onDaySelected != null) {
        final key = widget.events.keys.firstWhere((it) => DateTimeUtil.isSameDay(it, date), orElse: () => null);
        widget.onDaySelected(date, widget.events[key] ?? []);
      }
    });
  }

  void _onHorizontalSwipe(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      // Swipe right
      _selectPrevious();
    } else {
      // Swipe left
      _selectNext();
    }
  }

  void _onUnavailableDaySelected() {
    if (widget.onUnavailableDaySelected != null) {
      widget.onUnavailableDaySelected();
    }
  }

  bool _isDayUnavailable(DateTime day) {
    return (widget.startDay != null && day.isBefore(widget.startDay)) ||
        (widget.endDay != null && day.isAfter(widget.endDay));
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    if (widget.headerVisible) {
      children.addAll([
        const SizedBox(height: 0.0),
        _buildHeader(),
      ]);
    }

    children.addAll([
      // const SizedBox(height: 10.0),
      _buildCalendarContent(),
      const SizedBox(height: 0.0),
    ]);

    return ClipRect(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

  Widget _buildHeader() {
    LocaleType datePickerLocale = LocaleType.jp;
    for (LocaleType type in LocaleType.values) {
      if (type.toString().substring(type.toString().length - 2) == widget.locale) {
        datePickerLocale = type;
        break;
      }
    }

    final children = [
      Expanded(
          child: Container(
        height: 56,
        color: Theme.of(context).appBarTheme.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomIconButton(
              icon: widget.headerStyle.dehazeIcon,
              onTap: widget.onMenuTapped,
              margin: widget.headerStyle.dehazeMargin,
              padding: widget.headerStyle.dehazePadding,
            ),
            Container(
              child: Container(
                child: FlatButton(
                  onPressed: () {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      theme: DatePickerTheme(
                          backgroundColor: Theme.of(context).cardTheme.color,
                          itemStyle:
                              TextStyle(color: Theme.of(context).textTheme.body1.color, fontWeight: FontWeight.bold),
                          cancelStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
                          doneStyle: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold)),
                      onConfirm: (date) {
                        _selectPickerDate(date);
                      },
                      currentTime: widget.selectedDay,
                      locale: datePickerLocale,
                    );
                  },
                  child: Text(
                    widget.headerStyle.titleTextBuilder != null
                        ? widget.headerStyle.titleTextBuilder(_calendarLogic.focusedDay, widget.locale)
                        : DateFormat.yMMMM(widget.locale).format(_calendarLogic.focusedDay),
                    style: widget.headerStyle.titleTextStyle,
                    textAlign: widget.headerStyle.centerHeaderTitle ? TextAlign.left : TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CustomIconButton(
                    icon: widget.headerStyle.leftChevronIcon,
                    onTap: _selectPrevious,
                    margin: EdgeInsets.all(12.0),
                    padding: EdgeInsets.all(0.0),
                  ),
                  CustomIconButton(
                    icon: widget.headerStyle.rightChevronIcon,
                    onTap: _selectNext,
                    margin: EdgeInsets.all(12.0),
                    padding: EdgeInsets.all(0.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: children,
    );
  }

  Widget _buildCalendarContent() {
    if (widget.formatAnimation == FormatAnimation.slide) {
      return AnimatedSize(
        duration: Duration(milliseconds: _calendarLogic.calendarFormat == CalendarFormat.month ? 330 : 220),
        curve: Curves.fastOutSlowIn,
        alignment: Alignment(0, -1),
        vsync: this,
        child: _buildWrapper(),
      );
    } else {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        transitionBuilder: (child, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        },
        child: _buildWrapper(
          key: ValueKey(_calendarLogic.calendarFormat),
        ),
      );
    }
  }

  Widget _buildWrapper({Key key}) {
    Widget wrappedChild = _buildTable();

    switch (widget.availableGestures) {
      case AvailableGestures.all:
        wrappedChild = _buildVerticalSwipeWrapper(
          child: _buildHorizontalSwipeWrapper(
            child: wrappedChild,
          ),
        );
        break;
      case AvailableGestures.verticalSwipe:
        wrappedChild = _buildVerticalSwipeWrapper(
          child: wrappedChild,
        );
        break;
      case AvailableGestures.horizontalSwipe:
        wrappedChild = _buildHorizontalSwipeWrapper(
          child: wrappedChild,
        );
        break;
      case AvailableGestures.none:
        break;
    }
    return Card(
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      key: key,
      elevation: 4,
      child: Container(child: wrappedChild),
    );
  }

  Widget _buildVerticalSwipeWrapper({Widget child}) {
    return SimpleGestureDetector(
      child: child,
      onVerticalSwipe: (direction) {
        setState(() {
          _calendarLogic.swipeCalendarFormat(direction == SwipeDirection.up);
        });
      },
      swipeConfig: widget.simpleSwipeConfig,
    );
  }

  Widget _buildHorizontalSwipeWrapper({Widget child}) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 350),
      switchInCurve: Curves.decelerate,
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(begin: Offset(_calendarLogic.dx, 0), end: Offset(0, 0)).animate(animation),
          child: child,
        );
      },
      layoutBuilder: (currentChild, _) => currentChild,
      child: Dismissible(
        key: ValueKey(_calendarLogic.pageId),
        resizeDuration: null,
        onDismissed: _onHorizontalSwipe,
        direction: DismissDirection.horizontal,
        child: child,
      ),
    );
  }

  Widget _buildTable() {
    const daysInWeek = 7;
    final children = <TableRow>[
      _buildDaysOfWeek(),
    ];

    int x = 0;
    while (x < _calendarLogic.visibleDays.length) {
      children.add(_buildTableRow(_calendarLogic.visibleDays.skip(x).take(daysInWeek).toList()));
      x += daysInWeek;
    }

    return Table(
      // Makes this Table fill its parent horizontally
      defaultColumnWidth: FractionColumnWidth(1.0 / daysInWeek),
      children: children,
    );
  }

  TableRow _buildDaysOfWeek() {
    return TableRow(
      children: _calendarLogic.visibleDays.take(7).map((date) {
        return Container(
            height: 25,
            color: _calendarLogic.isWeekend(date)
                ? Theme.of(context).primaryColorLight
                : Theme.of(context).cardTheme.color,
            child: Center(
              child: Text(
                widget.daysOfWeekStyle.dowTextBuilder != null
                    ? widget.daysOfWeekStyle.dowTextBuilder(date, widget.locale)
                    : DateFormat.E(widget.locale).format(date),
                style: TextStyle(fontSize: 12, color: Theme.of(context).textTheme.body2.color, height: 17 / 12),
                overflow: TextOverflow.ellipsis,
              ),
            ));
      }).toList(),
    );
  }

  TableRow _buildTableRow(List<DateTime> days) {
    return TableRow(children: days.map((date) => _buildTableCell(date)).toList());
  }

  // TableCell will have equal width and height
  Widget _buildTableCell(DateTime date) {
    return Container(
      height: 43,
      color: _calendarLogic.isWeekend(date) ? Theme.of(context).primaryColorLight : Theme.of(context).cardTheme.color,
      child: _buildCell(date),
    );
  }

  Widget _buildCell(DateTime date) {
    if (!widget.calendarStyle.outsideDaysVisible &&
        _calendarLogic.isExtraDay(date) &&
        _calendarLogic.calendarFormat == CalendarFormat.month) {
      return Container();
    }

    Widget content = _buildCellContent(date);

    final eventKey = widget.events.keys.firstWhere((it) => DateTimeUtil.isSameDay(it, date), orElse: () => null);
    final holidayKey = widget.holidays.keys.firstWhere((it) => DateTimeUtil.isSameDay(it, date), orElse: () => null);
    final key = eventKey ?? holidayKey;

    if (key != null) {
      final children = <Widget>[content];
      final events = eventKey != null ? widget.events[eventKey].take(widget.calendarStyle.markersMaxAmount) : [];
      final holidays = holidayKey != null ? widget.holidays[holidayKey] : [];

      if (!_isDayUnavailable(date)) {
        if (widget.builders.markersBuilder != null) {
          children.addAll(
            widget.builders.markersBuilder(
              context,
              key,
              events.toList(),
              holidays,
            ),
          );
        } else {
          children.add(
            Positioned(
              top: widget.calendarStyle.markersPositionTop,
              bottom: widget.calendarStyle.markersPositionBottom,
              left: widget.calendarStyle.markersPositionLeft,
              right: widget.calendarStyle.markersPositionRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: events.map((event) => _buildMarker(eventKey, event)).toList(),
              ),
            ),
          );
        }
      }

      if (children.length > 1) {
        content = Stack(
          alignment: widget.calendarStyle.markersAlignment,
          children: children,
          overflow: widget.calendarStyle.canEventMarkersOverflow ? Overflow.visible : Overflow.clip,
        );
      }
    }

    return GestureDetector(
      behavior: widget.dayHitTestBehavior,
      onTap: () => _isDayUnavailable(date) ? _onUnavailableDaySelected() : _selectDate(date),
      child: content,
    );
  }

  Widget _buildCellContent(DateTime date) {
    final eventKey = widget.events.keys.firstWhere((it) => DateTimeUtil.isSameDay(it, date), orElse: () => null);
    final holidayKey = widget.holidays.keys.firstWhere((it) => DateTimeUtil.isSameDay(it, date), orElse: () => null);

    final tIsUnavailable = _isDayUnavailable(date);
    final tIsSelected = _calendarLogic.isSelected(date);
    final tIsToday = _calendarLogic.isToday(date);
    final tIsOutside = _calendarLogic.isExtraDay(date);
    final tIsHoliday = widget.holidays.containsKey(holidayKey);
    final tIsWeekend = _calendarLogic.isWeekend(date);

    final isUnavailable = widget.builders.unavailableDayBuilder != null && tIsUnavailable;
    final isSelected = widget.builders.selectedDayBuilder != null && tIsSelected;
    final isToday = widget.builders.todayDayBuilder != null && tIsToday;
    final isOutsideHoliday = widget.builders.outsideHolidayDayBuilder != null && tIsOutside && tIsHoliday;
    final isHoliday = widget.builders.holidayDayBuilder != null && !tIsOutside && tIsHoliday;
    final isOutsideWeekend =
        widget.builders.outsideWeekendDayBuilder != null && tIsOutside && tIsWeekend && !tIsHoliday;
    final isOutside = widget.builders.outsideDayBuilder != null && tIsOutside && !tIsWeekend && !tIsHoliday;
    final isWeekend = widget.builders.weekendDayBuilder != null && !tIsOutside && tIsWeekend && !tIsHoliday;

    if (isUnavailable) {
      return widget.builders.unavailableDayBuilder(context, date, widget.events[eventKey]);
    } else if (isSelected && widget.calendarStyle.renderSelectedFirst) {
      return widget.builders.selectedDayBuilder(context, date, widget.events[eventKey]);
    } else if (isToday) {
      return widget.builders.todayDayBuilder(context, date, widget.events[eventKey]);
    } else if (isSelected) {
      return widget.builders.selectedDayBuilder(context, date, widget.events[eventKey]);
    } else if (isOutsideHoliday) {
      return widget.builders.outsideHolidayDayBuilder(context, date, widget.events[eventKey]);
    } else if (isHoliday) {
      return widget.builders.holidayDayBuilder(context, date, widget.events[eventKey]);
    } else if (isOutsideWeekend) {
      return widget.builders.outsideWeekendDayBuilder(context, date, widget.events[eventKey]);
    } else if (isOutside) {
      return widget.builders.outsideDayBuilder(context, date, widget.events[eventKey]);
    } else if (isWeekend) {
      return widget.builders.weekendDayBuilder(context, date, widget.events[eventKey]);
    } else if (widget.builders.dayBuilder != null) {
      return widget.builders.dayBuilder(context, date, widget.events[eventKey]);
    } else {
      return CellWidget(
        text: '${date.day}',
        isUnavailable: tIsUnavailable,
        isSelected: tIsSelected,
        isToday: tIsToday,
        isWeekend: tIsWeekend,
        isOutsideMonth: tIsOutside,
        isHoliday: tIsHoliday,
        calendarStyle: widget.calendarStyle,
      );
    }
  }

  Widget _buildMarker(DateTime date, dynamic event) {
    if (widget.builders.singleMarkerBuilder != null) {
      return widget.builders.singleMarkerBuilder(context, date, event);
    } else {
      return Container(
        width: 4.5,
        height: 4.5,
        margin: const EdgeInsets.symmetric(horizontal: 0.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.calendarStyle.markersColor,
        ),
      );
    }
  }

  void _selectPickerDate(DateTime date) {
    setState(() {
      if (widget.onDateConfirm != null) {
        final DateTime dt = widget.onDateConfirm(date);
        _calendarLogic.selectPickerDate(dt);
        _selectDate(dt);
      }
    });
  }
}
