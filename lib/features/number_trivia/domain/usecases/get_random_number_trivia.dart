import 'package:clean_architecture_tdd_course/core/error/failure.dart';
import 'package:clean_architecture_tdd_course/core/usecases/usecase.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams>{
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);


  @override
  Future<Either<Failure, dynamic>> call(params) async {
    return await repository.getRandomNumberTrivia();
  }
}

