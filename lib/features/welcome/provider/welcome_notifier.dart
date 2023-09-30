// ignore: depend_on_referenced_packages
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'welcome_notifier.g.dart';

@riverpod
class WelcomeNotifier extends _$WelcomeNotifier {
  @override
  bool build() {
    return false;
  }

  void isAuthenticated(bool isAuth) {
    state = isAuth;
  }
}
