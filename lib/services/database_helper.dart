import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/course.dart';

class DatabaseHelper {
  static final instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get db async {
    if (_database != null) return _database!;
    _database = await _initDB('courses.db');
    return _database!;
  }

  Future<Database> _initDB(String file) async {
    final pathDB = await getDatabasesPath();
    final path = join(pathDB, file);

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE courses(
          id TEXT PRIMARY KEY,
          title TEXT,
          category TEXT,
          description TEXT,
          isFavorite INTEGER
        )
        ''');
      },
    );
  }

  Future<void> insert(Course c) async {
    final dbClient = await db;
    await dbClient.insert('courses', c.toMap());
  }

  Future<List<Course>> getAll() async {
    final dbClient = await db;
    final data = await dbClient.query('courses');

    return data.map((e) => Course(
      id: e['id'] as String,
      title: e['title'] as String,
      category: e['category'] as String,
      description: e['description'] as String,
      isFavorite: e['isFavorite'] == 1,
    )).toList();
  }

  Future<void> update(Course c) async {
    final dbClient = await db;
    await dbClient.update('courses', c.toMap(),
        where: 'id=?', whereArgs: [c.id]);
  }

  Future<void> delete(String id) async {
    final dbClient = await db;
    await dbClient.delete('courses', where: 'id=?', whereArgs: [id]);
  }
}