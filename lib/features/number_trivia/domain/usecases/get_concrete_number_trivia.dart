import 'package:clean_architecture_tdd_course/core/error/failure.dart';
import 'package:clean_architecture_tdd_course/core/usecases/usecase.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../entities/number_trivia.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, int> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(Params params) async {
    return await repository.getConcreateNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number}) : super([number]);
}
