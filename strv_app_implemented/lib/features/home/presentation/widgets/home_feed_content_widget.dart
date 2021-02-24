import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strv_app_implemented/features/home/presentation/cubit/home_feed_cubit.dart';
import 'package:strv_app_implemented/features/home/presentation/widgets/home_feed_content_body_widget.dart';
import 'package:strv_app_implemented/widgets/state_empty_widget.dart';
import 'package:strv_app_implemented/widgets/state_error_widget.dart';

class HomeFeedContentWidget extends StatefulWidget {
  final List<Widget> _sliverAppBarView;

  const HomeFeedContentWidget(this._sliverAppBarView, {Key key}) : super(key: key);

  @override
  _HomeFeedContentWidgetState createState() => _HomeFeedContentWidgetState();
}

class _HomeFeedContentWidgetState extends State<HomeFeedContentWidget> {
  Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return widget._sliverAppBarView;
      },
      body: LayoutBuilder(
        builder: (context, constraints) => BlocListener<HomeFeedCubit, HomeFeedState>(
          listener: (context, state) {
            if (!state.status.isLoading) {
              _refreshCompleter?.complete();
              _refreshCompleter = Completer();
            }
          },
          child: BlocBuilder<HomeFeedCubit, HomeFeedState>(
            builder: (context, state) {
              Widget body;
              switch (state.status) {
                case HomeFeedStatus.loading:
                case HomeFeedStatus.success:
                  body = HomeFeedContentBodyWidget(state: state);
                  break;
                case HomeFeedStatus.empty:
                  body = StateEmptyWidget(
                    constraints,
                    () => context.read<HomeFeedCubit>().refreshData(),
                  );
                  break;
                case HomeFeedStatus.error:
                default:
                  body = StateErrorWidget(
                    "Error text",
                    constraints,
                    () => context.read<HomeFeedCubit>().refreshData(),
                  );
              }

              return RefreshIndicator(
                child: body,
                onRefresh: () {
                  context.read<HomeFeedCubit>().refreshData();
                  return _refreshCompleter.future;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
