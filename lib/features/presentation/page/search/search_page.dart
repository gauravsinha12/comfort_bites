import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comfort_bites/features/presentation/cubit/post/post_cubit.dart';
import 'package:comfort_bites/features/presentation/cubit/user/user_cubit.dart';
import 'package:comfort_bites/features/presentation/page/search/widget/search_main_widget.dart';
import 'package:comfort_bites/injection_container.dart' as di;

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => di.sl<PostCubit>(),
        ),
      ],
      child: SearchMainWidget(),
    );
  }
}
