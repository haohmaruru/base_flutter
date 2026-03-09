// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UserDbTable extends UserDb with TableInfo<$UserDbTable, UserDbData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDbTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, email, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_db';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserDbData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserDbData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
    );
  }

  @override
  $UserDbTable createAlias(String alias) {
    return $UserDbTable(attachedDatabase, alias);
  }
}

class UserDbData extends DataClass implements Insertable<UserDbData> {
  final String id;
  final String? email;
  final DateTime? createdAt;
  const UserDbData({required this.id, this.email, this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  UserDbCompanion toCompanion(bool nullToAbsent) {
    return UserDbCompanion(
      id: Value(id),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory UserDbData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDbData(
      id: serializer.fromJson<String>(json['id']),
      email: serializer.fromJson<String?>(json['email']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'email': serializer.toJson<String?>(email),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  UserDbData copyWith({
    String? id,
    Value<String?> email = const Value.absent(),
    Value<DateTime?> createdAt = const Value.absent(),
  }) => UserDbData(
    id: id ?? this.id,
    email: email.present ? email.value : this.email,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
  );
  UserDbData copyWithCompanion(UserDbCompanion data) {
    return UserDbData(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserDbData(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDbData &&
          other.id == this.id &&
          other.email == this.email &&
          other.createdAt == this.createdAt);
}

class UserDbCompanion extends UpdateCompanion<UserDbData> {
  final Value<String> id;
  final Value<String?> email;
  final Value<DateTime?> createdAt;
  final Value<int> rowid;
  const UserDbCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserDbCompanion.insert({
    required String id,
    this.email = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<UserDbData> custom({
    Expression<String>? id,
    Expression<String>? email,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserDbCompanion copyWith({
    Value<String>? id,
    Value<String?>? email,
    Value<DateTime?>? createdAt,
    Value<int>? rowid,
  }) {
    return UserDbCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDbCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserDbTable userDb = $UserDbTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userDb];
}

typedef $$UserDbTableCreateCompanionBuilder =
    UserDbCompanion Function({
      required String id,
      Value<String?> email,
      Value<DateTime?> createdAt,
      Value<int> rowid,
    });
typedef $$UserDbTableUpdateCompanionBuilder =
    UserDbCompanion Function({
      Value<String> id,
      Value<String?> email,
      Value<DateTime?> createdAt,
      Value<int> rowid,
    });

class $$UserDbTableFilterComposer
    extends Composer<_$AppDatabase, $UserDbTable> {
  $$UserDbTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserDbTableOrderingComposer
    extends Composer<_$AppDatabase, $UserDbTable> {
  $$UserDbTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserDbTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserDbTable> {
  $$UserDbTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UserDbTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserDbTable,
          UserDbData,
          $$UserDbTableFilterComposer,
          $$UserDbTableOrderingComposer,
          $$UserDbTableAnnotationComposer,
          $$UserDbTableCreateCompanionBuilder,
          $$UserDbTableUpdateCompanionBuilder,
          (UserDbData, BaseReferences<_$AppDatabase, $UserDbTable, UserDbData>),
          UserDbData,
          PrefetchHooks Function()
        > {
  $$UserDbTableTableManager(_$AppDatabase db, $UserDbTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserDbTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserDbTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserDbTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserDbCompanion(
                id: id,
                email: email,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> email = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserDbCompanion.insert(
                id: id,
                email: email,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserDbTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserDbTable,
      UserDbData,
      $$UserDbTableFilterComposer,
      $$UserDbTableOrderingComposer,
      $$UserDbTableAnnotationComposer,
      $$UserDbTableCreateCompanionBuilder,
      $$UserDbTableUpdateCompanionBuilder,
      (UserDbData, BaseReferences<_$AppDatabase, $UserDbTable, UserDbData>),
      UserDbData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserDbTableTableManager get userDb =>
      $$UserDbTableTableManager(_db, _db.userDb);
}
