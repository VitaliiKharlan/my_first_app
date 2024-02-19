import 'package:flutter/material.dart';

class NotifierModelProvider<Model extends ChangeNotifier>
    extends InheritedNotifier {
  final Model model;

  const NotifierModelProvider({
    super.key,
    required super.child,
    required this.model,
  }) : super(
    notifier: model,
  );

  static Model? watch<Model extends ChangeNotifier>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NotifierModelProvider<Model>>()
        ?.model;
  }

  static Model? read<Model extends ChangeNotifier>(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<NotifierModelProvider<Model>>()
        ?.widget;
    return widget is NotifierModelProvider<Model> ? widget.model : null;
  }
}