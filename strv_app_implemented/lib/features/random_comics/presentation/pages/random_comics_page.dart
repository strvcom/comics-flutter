import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/core/resources/dimen.dart';
import 'package:strv_app_implemented/features/random_comics/presentation/cubit/random_comics_cubit.dart';
import 'package:strv_app_implemented/widgets/state_empty_widget.dart';
import 'package:strv_app_implemented/widgets/state_error_widget.dart';

class RandomComicsPage extends StatefulWidget {
  @override
  _RandomComicsPageState createState() => _RandomComicsPageState();
}

class _RandomComicsPageState extends State<RandomComicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Comics", style: Theme.of(context).textTheme.headline6),
      ),
      body: BlocProvider(
        create: (context) => RandomComicsCubit(),
        child: BlocBuilder<RandomComicsCubit, RandomComicsState>(
          builder: (context, state) {
            switch (state.status) {
              case RandomComicsStatus.loading:
                return Center(child: CircularProgressIndicator());

              case RandomComicsStatus.success:
                return RandomComicsContentWidget(
                  state.comics?.title ?? "",
                  state.comics?.description ?? "",
                  state.comics?.url ?? "",
                );

              case RandomComicsStatus.empty:
                return StateEmptyWidget(
                  () => context.read<RandomComicsCubit>().refreshData(),
                );

              case RandomComicsStatus.error:
              default:
                return StateErrorWidget(
                  "Error text",
                  () => context.read<RandomComicsCubit>().refreshData(),
                );
            }
          },
        ),
      ),
    );
  }
}

class RandomComicsContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const RandomComicsContentWidget(this.title, this.description, this.imageUrl) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              right: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              top: DimenRes.GLOBAL_VERTICAL_SPACING,
              bottom: DimenRes.GLOBAL_VERTICAL_SPACING),
          width: double.infinity,
          child: Text(
            title,
            maxLines: 2,
            style: Theme.of(context).textTheme.headline1!.copyWith(color: ColorRes.ACCENT),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              left: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              right: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              bottom: DimenRes.GLOBAL_VERTICAL_SPACING * 2),
          width: double.infinity,
          child: Text(
            description,
            maxLines: 10,
            style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: PhotoView(imageProvider: NetworkImage(imageUrl)),
          ),
        ),
      ],
    );
  }
}
