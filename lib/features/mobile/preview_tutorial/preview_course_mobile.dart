import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class PreviewCourseMobilePage extends StatelessWidget {
  const PreviewCourseMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      leadingPath: AppRoutesNames.feature,
      body: Text('test'),
    );
  }
}
