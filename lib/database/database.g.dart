// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ScoresTable extends Scores with TableInfo<$ScoresTable, Score> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _highScoreMeta =
      const VerificationMeta('highScore');
  @override
  late final GeneratedColumn<int> highScore = GeneratedColumn<int>(
      'high_score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, highScore];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scores';
  @override
  VerificationContext validateIntegrity(Insertable<Score> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('high_score')) {
      context.handle(_highScoreMeta,
          highScore.isAcceptableOrUnknown(data['high_score']!, _highScoreMeta));
    } else if (isInserting) {
      context.missing(_highScoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Score map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Score(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      highScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}high_score'])!,
    );
  }

  @override
  $ScoresTable createAlias(String alias) {
    return $ScoresTable(attachedDatabase, alias);
  }
}

class Score extends DataClass implements Insertable<Score> {
  final int id;
  final int highScore;
  const Score({required this.id, required this.highScore});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['high_score'] = Variable<int>(highScore);
    return map;
  }

  ScoresCompanion toCompanion(bool nullToAbsent) {
    return ScoresCompanion(
      id: Value(id),
      highScore: Value(highScore),
    );
  }

  factory Score.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Score(
      id: serializer.fromJson<int>(json['id']),
      highScore: serializer.fromJson<int>(json['highScore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'highScore': serializer.toJson<int>(highScore),
    };
  }

  Score copyWith({int? id, int? highScore}) => Score(
        id: id ?? this.id,
        highScore: highScore ?? this.highScore,
      );
  Score copyWithCompanion(ScoresCompanion data) {
    return Score(
      id: data.id.present ? data.id.value : this.id,
      highScore: data.highScore.present ? data.highScore.value : this.highScore,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Score(')
          ..write('id: $id, ')
          ..write('highScore: $highScore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, highScore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Score &&
          other.id == this.id &&
          other.highScore == this.highScore);
}

class ScoresCompanion extends UpdateCompanion<Score> {
  final Value<int> id;
  final Value<int> highScore;
  const ScoresCompanion({
    this.id = const Value.absent(),
    this.highScore = const Value.absent(),
  });
  ScoresCompanion.insert({
    this.id = const Value.absent(),
    required int highScore,
  }) : highScore = Value(highScore);
  static Insertable<Score> custom({
    Expression<int>? id,
    Expression<int>? highScore,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (highScore != null) 'high_score': highScore,
    });
  }

  ScoresCompanion copyWith({Value<int>? id, Value<int>? highScore}) {
    return ScoresCompanion(
      id: id ?? this.id,
      highScore: highScore ?? this.highScore,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (highScore.present) {
      map['high_score'] = Variable<int>(highScore.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoresCompanion(')
          ..write('id: $id, ')
          ..write('highScore: $highScore')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  $MyDatabaseManager get managers => $MyDatabaseManager(this);
  late final $ScoresTable scores = $ScoresTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [scores];
}

typedef $$ScoresTableCreateCompanionBuilder = ScoresCompanion Function({
  Value<int> id,
  required int highScore,
});
typedef $$ScoresTableUpdateCompanionBuilder = ScoresCompanion Function({
  Value<int> id,
  Value<int> highScore,
});

class $$ScoresTableFilterComposer extends Composer<_$MyDatabase, $ScoresTable> {
  $$ScoresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get highScore => $composableBuilder(
      column: $table.highScore, builder: (column) => ColumnFilters(column));
}

class $$ScoresTableOrderingComposer
    extends Composer<_$MyDatabase, $ScoresTable> {
  $$ScoresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get highScore => $composableBuilder(
      column: $table.highScore, builder: (column) => ColumnOrderings(column));
}

class $$ScoresTableAnnotationComposer
    extends Composer<_$MyDatabase, $ScoresTable> {
  $$ScoresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get highScore =>
      $composableBuilder(column: $table.highScore, builder: (column) => column);
}

class $$ScoresTableTableManager extends RootTableManager<
    _$MyDatabase,
    $ScoresTable,
    Score,
    $$ScoresTableFilterComposer,
    $$ScoresTableOrderingComposer,
    $$ScoresTableAnnotationComposer,
    $$ScoresTableCreateCompanionBuilder,
    $$ScoresTableUpdateCompanionBuilder,
    (Score, BaseReferences<_$MyDatabase, $ScoresTable, Score>),
    Score,
    PrefetchHooks Function()> {
  $$ScoresTableTableManager(_$MyDatabase db, $ScoresTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScoresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScoresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScoresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> highScore = const Value.absent(),
          }) =>
              ScoresCompanion(
            id: id,
            highScore: highScore,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int highScore,
          }) =>
              ScoresCompanion.insert(
            id: id,
            highScore: highScore,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ScoresTableProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    $ScoresTable,
    Score,
    $$ScoresTableFilterComposer,
    $$ScoresTableOrderingComposer,
    $$ScoresTableAnnotationComposer,
    $$ScoresTableCreateCompanionBuilder,
    $$ScoresTableUpdateCompanionBuilder,
    (Score, BaseReferences<_$MyDatabase, $ScoresTable, Score>),
    Score,
    PrefetchHooks Function()>;

class $MyDatabaseManager {
  final _$MyDatabase _db;
  $MyDatabaseManager(this._db);
  $$ScoresTableTableManager get scores =>
      $$ScoresTableTableManager(_db, _db.scores);
}
