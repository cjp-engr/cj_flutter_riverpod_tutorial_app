// ignore: depend_on_referenced_packages
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'authentication_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  bool build() {
    return false;
  }

  void hasAccount(bool hasAcc) {
    state = hasAcc;
  }
}
