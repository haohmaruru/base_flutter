import 'package:base_flutter/data/local/database/table/user_table.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(tables: [UserDb])
class AppDatabase extends _$AppDatabase {
  static final String _dbName = 'base_database';

  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: _dbName,
      native: const DriftNativeOptions(databaseDirectory: getApplicationSupportDirectory),
    );
  }
}
