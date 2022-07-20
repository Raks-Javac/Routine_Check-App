import 'package:estate_project/src/core/base/base_view/b_view.dart';
import 'package:estate_project/src/ui/main_platform.dart/mobile/first_screen/providers/view_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseView<FeatureProvider>(
      vmBuilder: (context) => FeatureProvider(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, FeatureProvider viewModel) {
    return Scaffold(
      body: Center(
        child: TextButton.icon(
            onPressed: viewModel.startLoadingAndNavigateToNext,
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text("Start loading")),
      ),
    );
  }
}
