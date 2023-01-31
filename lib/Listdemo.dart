import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: ListDemo(),
  ));
}

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          const Center(
            child: Text("My Contact",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          ),

          Card(color: Colors.blue,
              child: ListTile(
                leading:const CircleAvatar(backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeSBM2BaOZkKTRh7m6tz9Y4iCeizEztZtcHQ&usqp=CAU") ,) ,
                title: const Text("aanad"),
                subtitle: const Text("7852634523"),
                trailing: Wrap(children: const [
                  Icon(Icons.message_outlined),
                  SizedBox(width: 20,),
                  Icon(Icons.phone)
                  
                ],),
              )),
          Card(color: Colors.redAccent,
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxZYY2AIAedQFVaPuihmQqipxOijVXLCIJtA&usqp=CAU")),
                title: const Text("bibin"),
                subtitle: const Text("9656558283"),
                trailing: Wrap(children: const [
                  Icon(Icons.message_outlined),
                  SizedBox(width: 20,),
                  Icon(Icons.phone)

                ],),
              )),
          Card(color: Colors.purple,
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4jzLVNYPREMoVmwoWc94Xc-UzXna22YxwlA&usqp=CAU")),
                title: const Text("nandhan"),
                subtitle: const Text("8848787271"),
                trailing:  Wrap(children: const [
                  Icon(Icons.message_outlined),
                  SizedBox(width: 20,),
                  Icon(Icons.phone)

                ],),
              )),
          Card(color: Colors.yellowAccent,
              child: ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAclBMVEX///8AAADx8fGxsbH39/e+vr6KioopKSkoKCj7+/vg4OBAQECNjY0JCQkNDQ1aWlpfX19LS0tGRkbp6enQ0NCDg4OhoaEjIyPb29urq6vm5uaamprDw8MwMDBubm4dHR02NjaVlZVUVFR3d3dmZmYVFRV4y9GXAAAC9klEQVR4nO3dC3LaMBRGYTAmwUB4Q3iEJqFk/1tshnZSaKfgK1+k3+45C2D0zYAsGyFarbQVeb+7GU6mg/3rqP3V00WjU7P3IvFY7WWL3bfXdvl689QjNtVfTUe3UZcdUw+6fPPVm1V3Kks98JItxkG8z15SD71MRWcW6mu3u6lHX6LuY7ivDsL+tIpPX5gvq/nkhet9VaC4cFXZpy3MJw5AZWE28AAKC+fPLkBdYd/Hpyt0A6oKs17ThT6TjLDw6AfUFO4cgZLCtSdQUhh2L18jYeW7CXWh73tUUXhouvDFGagn9J1mBIUdb6Cc0G89Kip0/xTKCYOfbNdFuPUHigkfGi90v1SoCb0XbHrC98YLHZ9daArvMZNqCf1XbGpC51vfX61Ts85yeoz/R3lq1ll3Aa5Sq85a3AM4TK06L3yieR4cjsuHvxtu+qlRF4VNNOPOQumTdrWQO6el0kx5s4Bldy32O31VmC8WH9vUY7ZlX7MprVbKZL51mqQesTWzsF4fwlbABT/1gM1Zhd9TD9icVbhLPWBzXaOwbjOpfVmqteQsk1VYlx3qv0OIUD+ECPVDiFA/hAj1Q4hQP4QI9UOIUD+EdRDm2ZXyjVG4vfZqP4t8OM38+GE0VO4t6ncbfj97tXSIKKxwOkmV4m2JmqcBtqfRhHf4IUWp9tFmG+u3g171om2YQogQ4f8rfESIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIsHbC5u9UyBIJI24Zqvh/OKFt4gnT7PoaxwN+vk89D8sv1yj6MVhF/u8K6+7L+bVXOxWbd6sm7KC9HkKE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoX/OF1nN46ydc24Cz1OMNaGASRj+a1CHTKbVRD5d1K1vuy/GeZnc+HvgHllpO87YiSVIAAAAASUVORK5CYII=")),
                title: const Text("ihjaz"),
                subtitle: const Text("9685741236"),
                trailing:  Wrap(children: const [
                  Icon(Icons.message_outlined),
                  SizedBox(width: 20,),
                  Icon(Icons.phone)

                ],),
              )),

          // Text("data1"),
          // Text("data2"),
          // Text("data3"),
          // Text("data4")
        ],
      ),
    );
  }
}
