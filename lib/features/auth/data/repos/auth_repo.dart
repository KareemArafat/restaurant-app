import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future <Either<String,void>> login(String email,String password);
}
