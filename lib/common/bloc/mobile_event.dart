import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class MobileEvent extends Equatable {}

class ChangeThemeEvent extends MobileEvent {
  final bool isDarkTheme;
  ChangeThemeEvent({@required this.isDarkTheme});
  @override
  String toString() => 'ChangeThemeEvent isDarkTheme= $isDarkTheme';
}

class InitThemeEvent extends MobileEvent {
  InitThemeEvent();
  @override
  String toString() => 'InitThemeEvent';
}
