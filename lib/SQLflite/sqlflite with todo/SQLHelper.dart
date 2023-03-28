import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  // create table
  /// create table with name todo and colum name as title and discription
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE tudu(      
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          title  TEXT,
          description TEXT,
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
    final data = {'title':titlecontrol,'description':discriptioncontrol};
    final id =await db.insert('todo', data);
    return id;
  }
// read all the data from db u can use rawQuery() function too
  static Future<List<Map<String,dynamic>>>readData() async {
    final db = await SQLHelper.db();
    return db.query('todo',orderBy: 'id');
  }

  static Future<void>deleteTask(int id) async{
    final db = await SQLHelper.db();
    try{
      await db.delete('todo',where: "id?",whereArgs: [id]);
    }catch(error){
      debugPrint("some error occur$error");
    }
  }


  static Future<int>updateTask(int id, String title, String description)async {
    final db = await SQLHelper.db();
    final data ={
      'title' :title,
      'description': description,
      'createdAt': DateTime.now().toString()
    };
    final result = await db.update('todo', data,where: 'id=?',whereArgs: [id]);
    return result;
  }
}