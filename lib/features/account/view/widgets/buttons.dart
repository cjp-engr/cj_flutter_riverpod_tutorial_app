// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_checker.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AccountButton extends ConsumerWidget {
  final String text;
  final bool isSignOut;
  const AccountButton({
    Key? key,
    required this.text,
    this.isSignOut = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TutorialButton(
      text: text,
      buttonType: EButtonType.tertiary,
      onPressed: () {
        isSignOut ? _onSignOut(context, ref) : null;
      },
    );
  }

  void _onSignOut(BuildContext context, WidgetRef ref) {
    ref.read(authCheckerProvider.notifier).onAuthentication(false);
    context.go(AppRoutesNames.base);
  }
}
