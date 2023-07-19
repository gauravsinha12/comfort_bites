import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comfort_bites/features/domain/entities/user/user_entity.dart';
import 'package:comfort_bites/features/presentation/cubit/post/post_cubit.dart';
import 'package:comfort_bites/features/presentation/page/post/widget/upload_post_main_widget.dart';
import 'package:comfort_bites/injection_container.dart' as di;

class UploadPostPage extends StatelessWidget {
  final UserEntity currentUser;

  const UploadPostPage({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (context) => di.sl<PostCubit>(),
      child: UploadPostMainWidget(currentUser: currentUser),
    );
  }
}
