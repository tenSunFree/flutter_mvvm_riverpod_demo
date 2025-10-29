import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../constants/database_constants.dart';
import '../../common/local/database_provider.dart';
import '../../common/remote/api_client.dart';
import '../model/hero.dart';
import '../model/pexels_models.dart';

part 'hero_list_repository.g.dart';

@riverpod
Future<HeroListRepository> heroListRepository(Ref ref) async {
  final apiClient = ref.watch(apiClientProvider);
  var db = await ref.watch(databaseProvider.future);
  await Future.delayed(const Duration(seconds: 1));
  db = await ref.watch(databaseProvider.future);
  await Future.delayed(const Duration(seconds: 1));
  db = await ref.watch(databaseProvider.future);
  await Future.delayed(const Duration(seconds: 1));
  return HeroListRepository(apiClient, db);
}

class HeroListRepository {
  final ApiClient apiClient;
  final Database database;

  HeroListRepository(this.apiClient, this.database);

  Future<List<Hero>> getHeroesFromRemote() async {
    try {
      final response = await apiClient.get<List<dynamic>>('/hero');
      final heroes = response.map((json) => Hero.fromJson(json)).toList();
      return heroes;
    } catch (e) {
      throw Exception('Failed to fetch heroes from remote: $e');
    }
  }

  Future<PexelsSearchResponse> searchPexels({
    required String query,
    int page = 1,
    int perPage = 1,
  }) async {
    final json = await apiClient.get<Map<String, dynamic>>(
      '/v1/search',
      queryParameters: {'query': query, 'page': page, 'per_page': perPage},
    );
    return PexelsSearchResponse.fromJson(json);
  }

  Future<List<Hero>> getHeroes() async {
    await Future.delayed(Duration(seconds: 5));
    final maps = await database.query(HeroTable.tableName);
    return maps.map(Hero.fromJson).toList();
  }

  Future<Hero?> getHeroFromRemote(String id) async {
    try {
      final response = await apiClient.get<Map<String, dynamic>>('/hero/$id');
      final hero = Hero.fromJson(response);
      return hero;
    } catch (e) {
      throw Exception('Failed to fetch hero from remote: $e');
    }
  }

  Future<Hero?> getHero(String id) async {
    final List<Map<String, dynamic>> maps = await database.query(
      HeroTable.tableName,
      where: '${HeroTable.columnId} = ?',
      whereArgs: [id],
    );
    if (maps.isEmpty) return null;
    return Hero.fromJson(maps[0]);
  }

  Future<void> insertHero(Hero hero) async {
    await database.insert(
      HeroTable.tableName,
      hero.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateHero(Hero hero) async {
    final map = hero.toJson()..remove(HeroTable.columnId);
    map[HeroTable.columnLastUpdated] = DateTime.now().millisecondsSinceEpoch;
    await database.update(
      HeroTable.tableName,
      map,
      where: '${HeroTable.columnId} = ?',
      whereArgs: [hero.id],
    );
  }

  Future<void> deleteHero(String id) async {
    await database.delete(
      HeroTable.tableName,
      where: '${HeroTable.columnId} = ?',
      whereArgs: [id],
    );
  }

  Future<void> toggleFavorite(String id) async {
    final hero = await getHero(id);
    if (hero != null) {
      await updateHero(hero.copyWith(isFavorite: !hero.isFavorite));
    }
  }
}
