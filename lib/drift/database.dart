import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@DriftDatabase(tables: [TodoItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<TodoItem>> watchTodoItems() {
    return select(todoItems).watch();
  }

  Future<List<TodoItem>> get allTodoItems => select(todoItems).get();

  Future<int> addTodoItem({
    required String title,
    required String content,
    int? createdAt,
  }) {
    return into(todoItems).insert(
      TodoItemsCompanion(
        title: Value(title),
        content: Value(content),
        createdAt: Value(DateTime.now()),
      ),
    );
  }

  Future<int> updateTodoItems({
    required TodoItem todoItem,
    required String title,
    required String content,
    int? createdAt,
  }) {
    return (update(todoItems)..where((tbl) => tbl.id.equals(todoItem.id)))
        .write(
      TodoItemsCompanion(
        title: Value(title),
        content: Value(content),
        createdAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> deleteTodoItem(TodoItem todoItem) {
    return (delete(todoItems)..where((tbl) => tbl.id.equals(todoItem.id))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFloder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFloder.path, 'db.sqlite'));
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
