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
  final  title = TextEditingController();
  final  description = TextEditingController();

  showForm(int? id) async {
    if (id != null){
      final existing_data = data_form_db.firstWhere((element) => element['id']==id);
      title.text = existing_data['title'];
      description.text = existing_data['description'];
    } // fetching data from the particular id for

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
                controller: title,
                decoration: const InputDecoration(hintText: 'title'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: description,
                decoration: const InputDecoration(hintText: 'discription'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                     if (id == null){
                       await createItem();
                     }if (id != null){
                      await Update(id);
                     }
                     title.text ="";
                     description.text ="";
                     Navigator.pop(context);
                  },
                  child: Text(id == null ? "Create Item":"Update Item"))
            ],
          ),
        ));
  }

    var isloading = true; // to check whether the screen have data or not
  List<Map<String,dynamic>> data_form_db = []; // to store data from db
  void getData() async {
    // to read datas from db
    final data = await SQLHelper.readData();
    setState(() {
      data_form_db = data; // set data from db to our list
      isloading = false;
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("sample"),),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => showForm(null)),
      body: isloading ? const Center(child: CircularProgressIndicator(),) :
          ListView.builder(
              itemCount: data_form_db.length,
              itemBuilder: (ctx,index){
            return Card(
              color: Colors.cyan,
              child: ListTile(
                title: Text(data_form_db[index][title]),
                subtitle: Text(data_form_db[index][description]),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: () => showForm(data_form_db[index]["id"]) , icon: const Icon(Icons.edit)),
                    IconButton(onPressed: () => deleteTask(data_form_db[index]["id"]), icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
          })
    );
  }

 Future<void> createItem() async {
      await SQLHelper.additem(title.text,description.text);
 }

 void  deleteTask(int id)async {
    await SQLHelper.deleteTask(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SuccessFully Deleted")));
 }

  Future<void>Update(int id) async {
    await SQLHelper.updateTask(id,title.text,description.text);
    getData();
  }


}