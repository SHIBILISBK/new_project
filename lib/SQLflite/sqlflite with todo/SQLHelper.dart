import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  // create table
  /// create table with name todo and colum name as title and discription
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE tudu(      
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          titlecontrol  TEXT,
          discriptioncontrol TEXT,
          )""");
  }
  // create database
static Future<sql.Database> db()async{
    return sql.openDatabase(
     'mytodo.db',
     version: 1,
     onCreate: (sql.Database db, int version) async {
       await createTable(db);
     }
    );
}

  static Future<int>additem(String titlecontrol,String discriptioncontrol) async {
    final db = await SQLHelper.db();
    final data = {'titlecontrol':titlecontrol,'discriptioncontrol':discriptioncontrol};
    final id =await db.insert('todo', data);
    return id;
  }
}