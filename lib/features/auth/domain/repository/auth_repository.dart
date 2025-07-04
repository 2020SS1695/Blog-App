// The Domain Repository( this one ) is the Interface for the Data Repository.

import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/core/error/failures.dart';

import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> currentUser();
}
