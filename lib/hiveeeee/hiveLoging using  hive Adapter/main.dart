import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/model/User_model.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/screens/Login.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('user');
  runApp(GetMaterialApp(home: Loginn(),debugShowCheckedModeBanner: false,));

}