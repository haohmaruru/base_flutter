import 'package:base_flutter/data/local/database/dao/user_dao.dart';
import 'package:base_flutter/data/local/database/database.dart';
import 'package:base_flutter/data/local/database/table/user_table.dart';
import 'package:base_flutter/data/model/user.dart';
import 'package:drift/drift.dart';

part 'user_dao_impl.g.dart';

@DriftAccessor(tables: [UserDb])
class UserDaoImpl extends DatabaseAccessor<AppDatabase> with _$UserDaoImplMixin implements UserDao {
  UserDaoImpl(super.db);

  @override
  Future<User?> getUserById(String id) async {
    final query = select(userDb);
    query.where((u) => u.id.equals(id));
    return query.getSingleOrNull().then((value) => value?.toUser);
  }

  @override
  Future<void> insertOrUpdateUser(User user) async {
    final userCompanion = UserDbCompanion(
      id: Value(user.id),
      email: user.email != null ? Value(user.email) : Value.absent(),
    );
    await into(userDb).insertOnConflictUpdate(userCompanion);
  }

  @override
  Future<bool> deleteUserById(String id) async {
    final statement = delete(userDb);
    statement.where((u) => u.id.equals(id));
    return (await statement.go()) > 0;
  }
}

extension UserDataExt on UserDbData {
  User get toUser => User.fromJson(toJson());
}
