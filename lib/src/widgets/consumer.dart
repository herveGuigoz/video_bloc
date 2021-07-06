import 'package:flutter/material.dart';
import 'package:video_bloc/src/models/models.dart';

import '../core/bloc.dart';

typedef _Builder<S> = Widget Function(BuildContext context, S state);

class VideoConsumer<S> extends StatelessWidget {
  const VideoConsumer({
    Key? key,
    required this.select,
    required this.builder,
  }) : super(key: key);

  final Selector<ScopedVideo, S> select;
  final _Builder<S> builder;

  @override
  Widget build(BuildContext context) {
    final bloc = VideoBloc.of(context);

    return StreamBuilder<S>(
      stream: bloc.select(select),
      initialData: select(bloc.state),
      builder: (context, snapshot) {
        return builder(context, snapshot.data!);
      },
    );
  }
}
