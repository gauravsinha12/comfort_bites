import 'package:comfort_bites/features/domain/entities/posts/post_entity.dart';
import 'package:comfort_bites/features/domain/repository/firebase_repository.dart';

class CreatePostUseCase {
  final FirebaseRepository repository;

  CreatePostUseCase({required this.repository});

  Future<void> call(PostEntity post) {
    return repository.createPost(post);
  }
}