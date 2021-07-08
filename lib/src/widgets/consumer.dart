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

// typedef ConsumerBuilder<S> = Widget Function(BuildContext context, S current);
//
// class VideoConsumer<S> extends StatefulWidget {
//   const VideoConsumer({
//     Key? key,
//     required this.select,
//     required this.builder,
//   }) : super(key: key);
//
//   final Selector<ScopedVideo, S> select;
//   final ConsumerBuilder<S> builder;
//
//   @override
//   _VideoConsumerState<S> createState() => _VideoConsumerState<S>();
// }
//
// class _VideoConsumerState<S> extends State<VideoConsumer<S>> {
//   late final VideoBloc _bloc;
//   late S _state;
//   StreamSubscription<S>? _subscription;
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _bloc = VideoBloc.of(context);
//     _state = widget.select(_bloc.state);
//     _subscription?.cancel();
//     _subscription = _bloc.select(widget.select).listen((event) {
//       setState(() => _state = event);
//     });
//   }
//
//   @override
//   void dispose() {
//     _subscription?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return widget.builder(context, _state);
//   }
// }
