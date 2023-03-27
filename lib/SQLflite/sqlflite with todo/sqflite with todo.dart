import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/SQLflite/sqlflite%20with%20todo/SQLHelper.dart';

void main(){
  runApp(MaterialApp(home: tudu(),debugShowCheckedModeBanner: false,));
}
class tudu extends StatefulWidget{
  @override
  State<tudu> createState() => _tuduState();
}

class _tuduState extends State<tudu> {
  final  titlecontrol = TextEditingController();
  final  discriptioncontrol = TextEditingController();

  showForm(int? id) async {
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titlecontrol,
                decoration: InputDecoration(hintText: 'title'),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: discriptioncontrol,
                decoration: InputDecoration(hintText: 'discription'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                     if (id == null){
                       await createItem();
                     }if (id != null){
                     //  await Update();
                     }
                     titlecontrol.text ="";
                     discriptioncontrol.text ="";
                  },
                  child: Text(id == null ? "Create Item":"Update Item"))
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sample"),),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => showForm(null)),
    );
  }

 Future<void> createItem() async {
      await SQLHelper.additem(titlecontrol.text,discriptioncontrol.text);
 }


}