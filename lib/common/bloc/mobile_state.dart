import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class MobileState extends Equatable {
  MobileState([List props = const []]) : super(props);
}

class InitThemeState extends MobileState {}

class ThemeChangedState extends MobileState {
  final ThemeData themeData;

  ThemeChangedState({
    @required this.themeData,
  }) : super([
          themeData,
        ]);

  @override
  String toString() => 'ThemeChangedState';
}
