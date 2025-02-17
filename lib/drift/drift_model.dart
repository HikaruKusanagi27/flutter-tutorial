import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/drift/database.dart';

part 'drift_model.g.dart';

@Riverpod(keepAlive: true)
AppDatabase database(DatabaseRef ref) => AppDatabase();

@riverpod
Stream<List<TodoItem>> todoList(TodoListRef ref) {
  final database = ref.watch(databaseProvider);
  return database.watchTodoItems();
}

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  void build() {}

  Future<void> addTodo({
    required String title,
    required String content,
    required DateTime deadline,
  }) async {
    final database = ref.read(databaseProvider);
    await database.addTodoItem(
      title: title,
      content: content,
      createdAt: deadline,
    );
  }

  Future<void> deleteTodo(TodoItem todo) async {
    final database = ref.read(databaseProvider);
    await database.deleteTodoItem(todo);
  }
}
