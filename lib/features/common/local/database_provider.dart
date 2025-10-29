import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../utils/database_helper.dart';

part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Database> database(Ref ref) async {
  final db = await DatabaseHelper.initDB('app.db');
  ref.onDispose(db.close);
  return db;
}
