import 'package:hive/hive.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/model/User_model.dart';

class DataBasee{
  DataBasee._internal();
  static DataBasee instance = DataBasee._internal();
  factory DataBasee(){ // factory constructor for creating singleton class
    return instance; // these class have only one instance
  }
  Future<void> userSignUp(User user)async{
    final db = await Hive.openBox<User>('user');
    db.put(user.id, user);
  }
// get all the registered users
  Future<List<User>>getUser() async{
    final db =await Hive.openBox<User>('user');
    return db.values.toList();
  }
}