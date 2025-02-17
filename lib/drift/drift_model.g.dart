// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'9facb325745d0aa7241f58d2bae29c7610777852';

/// See also [database].
@ProviderFor(database)
final databaseProvider = Provider<AppDatabase>.internal(
  database,
  name: r'databaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DatabaseRef = ProviderRef<AppDatabase>;
String _$todoListHash() => r'17b06a1b37f7bd5434ab0f35c876e8eb98cd121c';

/// See also [todoList].
@ProviderFor(todoList)
final todoListProvider = AutoDisposeStreamProvider<List<TodoItem>>.internal(
  todoList,
  name: r'todoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodoListRef = AutoDisposeStreamProviderRef<List<TodoItem>>;
String _$todoNotifierHash() => r'04ee3cc0d05563cf1199a792bdb09a403294228d';

/// See also [TodoNotifier].
@ProviderFor(TodoNotifier)
final todoNotifierProvider =
    AutoDisposeNotifierProvider<TodoNotifier, void>.internal(
  TodoNotifier.new,
  name: r'todoNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoNotifier = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
