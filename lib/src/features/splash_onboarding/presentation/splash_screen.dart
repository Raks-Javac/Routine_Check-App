import 'package:estate_project/src/core/base/base_view/b_view.dart';
import 'package:estate_project/src/features/splash_onboarding/presentation/providers/view_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashScreenProvider>(
      vmBuilder: (context) => SplashScreenProvider(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, SplashScreenProvider viewModel) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TextButton.icon(
                onPressed: viewModel.startLoadingAndNavigateToNext,
                icon: const Icon(Icons.play_arrow_rounded),
                label: const Text("Start loading")),
          ),
        ],
      ),
    );
  }
}
