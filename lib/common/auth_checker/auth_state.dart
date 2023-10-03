// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthState {
  final bool isAuthenticated;
  final bool hasAccount;

  AuthState({this.isAuthenticated = false, this.hasAccount = true});

  AuthState copyWith({
    bool? isAuthenticated,
    bool? hasAccount,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      hasAccount: hasAccount ?? this.hasAccount,
    );
  }
}
