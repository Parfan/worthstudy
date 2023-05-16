import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'models/user_model.dart';

class UserDatabase {
  static Database? _database;

  static Future<void> initializeDatabase() async {
    final String path = join(await getDatabasesPath(), 'user_database.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, age INTEGER)');
      },
    );
  }

  static Future<int> insertUser(User user) async {
    if (_database == null) {
      throw Exception('Database not initialized.');
    }
    return await _database!.insert('users', user.toMap());
  }

  static Future<int> updateUser(User user) async {
    if (_database == null) {
      throw Exception('Database not initialized.');
    }
    return await _database!.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  static Future<int> deleteUser(int id) async {
    if (_database == null) {
      throw Exception('Database not initialized.');
    }
    return await _database!.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<List<User>> getAllUsers({String? condition}) async {
    if (_database == null) {
      throw Exception('Database not initialized.');
    }
    final List<Map<String, dynamic>> maps =
        await _database!.query('users', where: condition);
    return List.generate(maps.length, (index) => User.fromMap(maps[index]));
  }

  static Future<User?> getUser(int id) async {
    if (_database == null) {
      throw Exception('Database not initialized.');
    }
    final List<Map<String, dynamic>> maps = await _database!.query(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }
    return null;
  }
}
