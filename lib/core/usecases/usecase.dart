import 'package:clean_architecture_tdd_course/core/error/failure.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params>{
  Future<Either<Failure, Type>> call(Params params);
}
class NoParams extend Equatable { }