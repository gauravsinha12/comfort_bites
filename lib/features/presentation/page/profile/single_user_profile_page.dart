import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comfort_bites/features/presentation/cubit/post/post_cubit.dart';
import 'package:comfort_bites/features/presentation/cubit/user/get_single_user/get_single_user_cubit.dart';
import 'package:comfort_bites/features/presentation/page/profile/widgets/single_user_profile_main_widget.dart';
import 'package:comfort_bites/injection_container.dart' as di;

class SingleUserProfilePage extends StatelessWidget {
  final String otherUserId;

  const SingleUserProfilePage({Key? key, required this.otherUserId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => di.sl<PostCubit>(),
        ),
      ],
      child: SingleUserProfileMainWidget(otherUserId: otherUserId),
    );
  }
}
