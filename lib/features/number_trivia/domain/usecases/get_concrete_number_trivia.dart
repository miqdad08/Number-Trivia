import 'package:clean_architecture_tdd_course/core/error/failure.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia{
  final NumberTriviaRepository repository;
  
  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({
    required int number,
  }) async {
      return await repository.getConcreateNumberTrivia(number);
  }
}