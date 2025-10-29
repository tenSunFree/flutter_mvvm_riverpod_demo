import 'package:flutter/material.dart';
import '../../../../constants/assets.dart';
import '/theme/app_colors.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      color: AppColors.mono100.withAlpha(175),
      child: Center(
        child: Lottie.asset(
          Assets.loading,
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}
