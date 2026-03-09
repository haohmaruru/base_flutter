import 'package:drift/drift.dart';

class UserDb extends Table {
  TextColumn get id => text()();

  TextColumn get email => text().nullable()();

  DateTimeColumn get createdAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
