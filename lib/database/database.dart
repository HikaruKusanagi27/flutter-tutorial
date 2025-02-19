import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Scores extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get highScore => integer()();
}

@DriftDatabase(tables: [Scores])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> getHighScore() async {
    final result = await select(scores).get();
    return result.isEmpty ? 0 : result.first.highScore;
  }

  Future<bool> updateHighScore(int score) async {
    final currentScore = await getHighScore();
    if (score > currentScore) {
      await into(scores).insert(
        ScoresCompanion.insert(
          highScore: score,
        ),
        mode: InsertMode.insertOrReplace,
      );
      return true;
    }
    return false;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'scores.db'));
    return NativeDatabase(file);
  });
}
