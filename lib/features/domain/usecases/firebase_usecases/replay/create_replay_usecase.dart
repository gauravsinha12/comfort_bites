import 'package:comfort_bites/features/domain/entities/replay/replay_entity.dart';
import 'package:comfort_bites/features/domain/repository/firebase_repository.dart';

class CreateReplayUseCase {
  final FirebaseRepository repository;

  CreateReplayUseCase({required this.repository});

  Future<void> call(ReplayEntity replay) {
    return repository.createReplay(replay);
  }
}