import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength()();
  TextColumn get content => text().named('body')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

class Scores extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get highScore => integer()();
}

@DriftDatabase(tables: [TodoItems, Scores])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<TodoItem>> watchTodoItems() => select(todoItems).watch();
  Future<List<TodoItem>> get allTodoItems => select(todoItems).get();

  Future<int> addTodoItem({
    required String title,
    required String content,
    DateTime? createdAt,
  }) {
    return into(todoItems).insert(
      TodoItemsCompanion(
        title: Value(title),
        content: Value(content),
        createdAt: Value(createdAt ?? DateTime.now()),
      ),
    );
  }

  Future<void> deleteTodoItem(TodoItem todoItem) {
    return (delete(todoItems)..where((tbl) => tbl.id.equals(todoItem.id))).go();
  }

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
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
