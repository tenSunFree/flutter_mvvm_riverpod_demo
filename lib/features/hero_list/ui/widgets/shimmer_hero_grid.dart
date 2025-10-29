import 'package:flutter/material.dart';
import '/theme/app_colors.dart';
import 'common_shimmer.dart';

class ShimmerHeroGrid extends StatelessWidget {
  const ShimmerHeroGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.0,
        childAspectRatio: 1.0, // 調整比例以撐滿高度
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      // Show 6 shimmer items while loading
      itemBuilder: (context, index) {
        //   margin: const EdgeInsets.all(4.0),
        final isLast = index == 5;
        return Container(
          margin: isLast
              ? const EdgeInsets.all(8.0) // 最後一個：四邊都有
              : const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0), // 其他：沒有 right
          child: CommonShimmer(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.mono0,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        );
      },
    );
  }
}
