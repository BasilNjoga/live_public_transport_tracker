

import 'package:transportapp/database/user_database.dart';
import 'package:transportapp/models/users_model.dart';

class UserDao {
  final dbProvider = DatabaseProvider.dbProvider;

  Future<Future<int>?> createUser(User user) async {
    final db = await dbProvider.database;

    var result = db?.insert(userTable, user.toDatabaseJson());
    return result;
  }

  Future<int?> deleteUser(int id) async {
    final db = await dbProvider.database;
    var result = await db?.delete(userTable, where: "id = ?", whereArgs: [id]);
    return result;
  }

  Future<bool> checkUser(int id) async {
    final db = await dbProvider.database;
    try {
      List<Map> users = await db!
          .query(userTable, where: 'id = ?', whereArgs: [id]);
      if (users.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return false;
    }
  }
}