import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comfort_bites/features/presentation/cubit/post/get_single_post/get_single_post_cubit.dart';
import 'package:comfort_bites/features/presentation/cubit/post/post_cubit.dart';
import 'package:comfort_bites/features/presentation/page/post/widget/post_detail_main_widget.dart';
import 'package:comfort_bites/injection_container.dart' as di;

class PostDetailPage extends StatelessWidget {
  final String postId;

  const PostDetailPage({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetSinglePostCubit>(
          create: (context) => di.sl<GetSinglePostCubit>(),
        ),
        BlocProvider<PostCubit>(
          create: (context) => di.sl<PostCubit>(),
        ),
      ],
      child: PostDetailMainWidget(postId: postId),
    );
  }
}
