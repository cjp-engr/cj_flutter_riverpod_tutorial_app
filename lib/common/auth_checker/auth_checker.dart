// ignore: depend_on_referenced_packages
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_state.dart';

part 'auth_checker.g.dart';

@riverpod
class AuthChecker extends _$AuthChecker {
  @override
  AuthState build() {
    return AuthState();
  }

  void onAuthentication(bool isAuth) {
    state = state.copyWith(isAuthenticated: isAuth);
  }

  void onHasAccountCheck(bool hasAcc) {
    state = state.copyWith(hasAccount: hasAcc);
  }

  //test
}
