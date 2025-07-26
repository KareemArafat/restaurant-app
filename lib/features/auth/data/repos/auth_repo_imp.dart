import 'package:dartz/dartz.dart';
import 'package:restaurant_app/features/auth/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<String, void>> login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return left('No user found for that email.');
        case 'wrong-password':
          return left('Wrong password provided for that user.');
        case 'invalid-email':
          return left('Invalid email address.');
        default:
          return left('Authentication error: Try Again');
      }
    }
  }
}
