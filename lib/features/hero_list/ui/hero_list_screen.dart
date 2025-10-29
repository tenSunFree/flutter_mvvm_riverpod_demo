import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../ui/view_model/hero_list_view_model.dart';
import 'state/hero_list_state.dart';
import 'widgets/hero_item.dart';
import 'widgets/shimmer_hero_grid.dart';

class HeroListScreen extends ConsumerWidget {
  const HeroListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heroListState = ref.watch(heroListViewModelProvider);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1080 / 1317,
              child: Image.asset(
                'assets/images/top_bar.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: _buildBodyFromState(heroListState),
            ),
            AspectRatio(
              aspectRatio: 1080 / 492,
              child: Image.asset(
                'assets/images/bottom_bar.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyFromState(AsyncValue<HeroListState> heroListState) {
    return heroListState.when(
      data: (state) {
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 11),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                  childAspectRatio: 1.0, // 調整比例以撐滿高度
                ),
                scrollDirection: Axis.horizontal,
                itemCount: state.photos.length,
                itemBuilder: (context, index) {
                  final photo = state.photos[index];
                  final isLast = index == state.photos.length - 1;
                  return HeroItem(
                    name: photo.photographerId.toString(),
                    imageUrl: photo.src.medium ?? photo.src.original,
                    isFavorite: true,
                    margin: isLast
                        ? const EdgeInsets.all(8.0) // 最後一個：四邊都有
                        : const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                    // 其他：沒有 right
                    onFavoritePressed: () {
                      // ref
                      //     .read(heroListViewModelProvider.notifier)
                      //     .toggleFavorite(hero.id);
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
      loading: () => const ShimmerHeroGrid(),
      error: (error, stack) => Center(child: Text(error.toString())),
    );
  }
}
