import 'package:flutter/material.dart';
import '/theme/app_colors.dart';

class HeroItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;
  final EdgeInsetsGeometry margin;

  const HeroItem({
    super.key,
    required this.name,
    required this.imageUrl,
    this.isFavorite = false,
    required this.onFavoritePressed,
    this.margin = const EdgeInsets.all(4.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Card(
        // margin: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
        margin: margin,
        // color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withAlpha(200),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 12,
                // right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x30000000),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: AppColors.mono0,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          color: Colors.black.withAlpha(150),
                          offset: const Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
