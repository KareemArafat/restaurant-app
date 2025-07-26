import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/features/auth/data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginInitial());

  final AuthRepo _authRepo;

  login(String email, String password) async {
    emit(LoginLoading());
    var result = await _authRepo.login(email, password);
    result.fold(
      (l) => emit(LoginFailure(errMess: l)),
      (r) => emit(LoginSuccess()),
    );
  }
}
