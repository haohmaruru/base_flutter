// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dao_impl.dart';

// ignore_for_file: type=lint
mixin _$UserDaoImplMixin on DatabaseAccessor<AppDatabase> {
  $UserDbTable get userDb => attachedDatabase.userDb;
  UserDaoImplManager get managers => UserDaoImplManager(this);
}

class UserDaoImplManager {
  final _$UserDaoImplMixin _db;
  UserDaoImplManager(this._db);
  $$UserDbTableTableManager get userDb =>
      $$UserDbTableTableManager(_db.attachedDatabase, _db.userDb);
}
