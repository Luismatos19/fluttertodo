import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/task.dart';

class DataBaseAdd {
  Future<Database> database() async {
    return openDatabase(join(await getDatabasesPath(), 'task.db'),
        onCreate: (db, version) {
      // cria a tabela
      return db.execute(
        //query
        'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT)',
      );
    });
  }

  //colocando os dados do model na tabela criado
  Future<void> insertTask(Task task) async {
    Database db = await database();
    await db.insert('tasks', task.toMap());
  }
}
