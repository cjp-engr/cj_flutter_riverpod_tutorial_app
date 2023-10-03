import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/account/view/widgets/account_details.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/account/view/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/account/view/widgets/settings_option.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/account/view/widgets/settings_title.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: _displayTitle(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            AccountDetails(),
            SizedBox(height: 20),
            AccountButton(text: 'Become an Instructor'),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: KSpacing.s8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsTitle(text: 'Video Preferences'),
                  SettingsOption(text: 'Download options'),
                  SettingsOption(text: 'Video playback options'),
                  SizedBox(height: 20),
                  SettingsTitle(text: 'Account settings'),
                  SettingsOption(text: 'Career goals'),
                  SettingsOption(text: 'Account security'),
                  SettingsOption(text: 'Email notification preferences'),
                  SettingsOption(text: 'Learning reminders'),
                  SizedBox(height: 20),
                  SettingsTitle(text: 'Help and Support'),
                  SettingsOption(text: 'About Udemy'),
                  SettingsOption(text: 'About Udemy Business'),
                  SettingsOption(text: 'Frequently asked questions'),
                  SettingsOption(text: 'Share the Udemy app'),
                  SizedBox(height: 20),
                  SettingsTitle(text: 'Diagnostics'),
                  SettingsOption(text: 'Status'),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20),
                AccountButton(
                  text: 'Sign out',
                  isSignOut: true,
                ),
                SizedBox(height: 40),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _displayTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KSpacing.s8),
      child: SizedBox(
        width: double.infinity,
        child: TutorialText(
          text: 'Account',
          fontWeight: FontWeight.bold,
          fontSize: KFontSize.s16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
