import 'package:flutter/material.dart';

/// DropDownFormButton
///
/// 改訂履歴
/// ----------------------
/// * 2019/08/03

class CommonDropdownButton<T> extends StatelessWidget {
  static const EdgeInsetsGeometry defaultMargin = EdgeInsets.all(0.0);
  CommonDropdownButton({
    Key key,
    this.labelAlignment = Alignment.center,
    this.labelMargin = defaultMargin,
    @required this.labelText,
    this.dpAlignment,
    this.dpMargin,
    this.dpHeight,
    @required this.items,
    this.value,
    this.hint,
    this.disabledHint,
    @required this.onChanged,
    this.elevation = 8,
    this.style,
    this.textStyle,
    this.underline,
    this.icon,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize = 24.0,
    this.isDense = false,
    this.isExpanded = false,
  })  : assert(items == null ||
            items.isEmpty ||
            value == null ||
            items.where((DropdownMenuItem<T> item) => item.value == value).length == 1),
        assert(elevation != null),
        assert(labelText != null),
        assert(iconSize != null),
        assert(isDense != null),
        assert(isExpanded != null),
        super(key: key);

  /// Align the [child] within the container for label.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry labelAlignment;

  /// Empty space to surround the [decoration] and [child] for label.
  final EdgeInsetsGeometry labelMargin;

  /// ドロップダウンのラベル
  final String labelText;

  /// Align the [child] within the container for dropdownButton.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry dpAlignment;

  /// Empty space to surround the [decoration] and [child] for dropdownButton.
  final EdgeInsetsGeometry dpMargin;

  /// dropdownButton height.
  final double dpHeight;

  /// The list of items the user can select.
  ///
  /// If the [onChanged] callback is null or the list of items is null
  /// then the dropdown button will be disabled, i.e. its arrow will be
  /// displayed in grey and it will not respond to input. A disabled button
  /// will display the [disabledHint] widget if it is non-null.
  final List<DropdownMenuItem<T>> items;

  /// The value of the currently selected [DropdownMenuItem], or null if no
  /// item has been selected. If `value` is null then the menu is popped up as
  /// if the first item were selected.
  final T value;

  /// Displayed if [value] is null.
  final Widget hint;

  /// A message to show when the dropdown is disabled.
  ///
  /// Displayed if [items] or [onChanged] is null.
  final Widget disabledHint;

  /// Called when the user selects an item.
  ///
  /// If the [onChanged] callback is null or the list of [items] is null
  /// then the dropdown button will be disabled, i.e. its arrow will be
  /// displayed in grey and it will not respond to input. A disabled button
  /// will display the [disabledHint] widget if it is non-null.
  final ValueChanged<T> onChanged;

  /// The z-coordinate at which to place the menu when open.
  ///
  /// The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12,
  /// 16, and 24. See [kElevationToShadow].
  ///
  /// Defaults to 8, the appropriate elevation for dropdown buttons.
  final int elevation;

  /// The text style to use for text in the dropdown button and the dropdown
  /// menu that appears when you tap the button.
  ///
  /// Defaults to the [TextTheme.subhead] value of the current
  /// [ThemeData.textTheme] of the current [Theme].
  final TextStyle style;

  /// The text style to use for text
  /// menu that appears when you tap the button.
  ///
  /// Defaults to the [TextTheme.subhead] value of the current
  /// [ThemeData.textTheme] of the current [Theme].
  final TextStyle textStyle;

  /// The widget to use for drawing the drop-down button's underline.
  ///
  /// Defaults to a 0.0 width bottom border with color 0xFFBDBDBD.
  final Widget underline;

  /// The widget to use for the drop-down button's icon.
  ///
  /// Defaults to an [Icon] with the [Icons.arrow_drop_down] glyph.
  final Widget icon;

  /// The color of any [Icon] descendant of [icon] if this button is disabled,
  /// i.e. if [onChanged] is null.
  ///
  /// Defaults to [Colors.grey.shade400] when the theme's
  /// [ThemeData.brightness] is [Brightness.light] and to
  /// [Colors.white10] when it is [Brightness.dark]
  final Color iconDisabledColor;

  /// The color of any [Icon] descendant of [icon] if this button is enabled,
  /// i.e. if [onChanged] is defined.
  ///
  /// Defaults to [Colors.grey.shade700] when the theme's
  /// [ThemeData.brightness] is [Brightness.light] and to
  /// [Colors.white70] when it is [Brightness.dark]
  final Color iconEnabledColor;

  /// The size to use for the drop-down button's down arrow icon button.
  ///
  /// Defaults to 24.0.
  final double iconSize;

  /// Reduce the button's height.
  ///
  /// By default this button's height is the same as its menu items' heights.
  /// If isDense is true, the button's height is reduced by about half. This
  /// can be useful when the button is embedded in a container that adds
  /// its own decorations, like [InputDecorator].
  final bool isDense;

  /// Set the dropdown's inner contents to horizontally fill its parent.
  ///
  /// By default this button's inner width is the minimum size of its contents.
  /// If [isExpanded] is true, the inner width is expanded to fill its
  /// surrounding container.
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (context) => Column(
        children: <Widget>[
          Container(
            alignment: labelAlignment,
            margin: labelMargin,
            child: Text(
              labelText,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            alignment: dpAlignment,
            margin: dpMargin,
            height: dpHeight,
            child: DropdownButton<T>(
              items: items,
              value: value,
              hint: hint,
              disabledHint: disabledHint,
              onChanged: onChanged,
              elevation: elevation,
              style: style,
              underline: underline,
              icon: icon,
              iconDisabledColor: iconDisabledColor,
              iconEnabledColor: iconEnabledColor,
              iconSize: iconSize,
              isDense: isDense,
              isExpanded: isExpanded,
            ),
          ),
        ],
      ),
    );
  }
}

/// A convenience widget that wraps a [DropdownButton] in a [FormField].
class CommonDropdownButtonFormField<T> extends FormField<T> {
  /// Creates a [DropdownButton] widget wrapped in an [InputDecorator] and
  /// [FormField].
  ///
  /// The [DropdownButton] [items] parameters must not be null.
  CommonDropdownButtonFormField({
    Key key,
    T value,
    @required List<DropdownMenuItem<T>> items,
    @required ValueChanged<T> onChanged,
    InputDecoration decoration = const InputDecoration(),
    FormFieldSetter<T> onSaved,
    FormFieldValidator<T> validator,
    Widget hint,
    Icon icon,
    TextStyle style,
  })  : assert(decoration != null, onChanged != null),
        super(
            key: key,
            onSaved: onSaved,
            initialValue: value,
            validator: validator,
            builder: (FormFieldState<T> field) {
              final InputDecoration effectiveDecoration =
                  decoration.applyDefaults(Theme.of(field.context).inputDecorationTheme);
              return InputDecorator(
                decoration: effectiveDecoration.copyWith(errorText: field.errorText),
                isEmpty: value == null,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<T>(
                    isDense: true,
                    value: value,
                    items: items,
                    hint: hint,
                    icon: icon,
                    onChanged: onChanged,
                    style: style,
                  ),
                ),
              );
            });
}
