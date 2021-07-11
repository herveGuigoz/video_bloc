import 'package:flutter/material.dart';

import 'bloc.dart';

class InheritedBloc extends InheritedWidget {
  const InheritedBloc({
    Key? key,
    required this.bloc,
    required Widget child,
  }) : super(key: key, child: child);

  final VideoBloc bloc;

  static InheritedBloc of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<InheritedBloc>();
    assert(result != null, 'No VideoBloc found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedBloc oldWidget) {
    return false;
  }
}
