import 'package:clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute(int number) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
