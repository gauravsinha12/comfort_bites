import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comfort_bites/features/domain/entities/posts/post_entity.dart';
import 'package:comfort_bites/features/presentation/cubit/post/post_cubit.dart';
import 'package:comfort_bites/features/presentation/page/post/widget/update_post_main_widget.dart';
import 'package:comfort_bites/injection_container.dart' as di;

class UpdatePostPage extends StatelessWidget {
  final PostEntity post;

  const UpdatePostPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (context) => di.sl<PostCubit>(),
      child: UpdatePostMainWidget(post: post,),
    );
  }
}
