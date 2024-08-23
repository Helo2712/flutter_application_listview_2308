import 'package:flutter/material.dart';

class Mylistpets extends StatefulWidget {
  const Mylistpets({super.key});

  @override
  State<Mylistpets> createState() => _MylistpetsState();
}

class _MylistpetsState extends State<Mylistpets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Lista de Pets",style: TextStyle(color: Colors.white),),backgroundColor: Colors.cyan,centerTitle: true,
       actions: [
        IconButton(onPressed:(){
          Navigator.pushNamed(context, '/ MypetShop');
        }, icon: Icon(Icons.arrow_back))
       ],
       ),
       body: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder:(context, index) => Divider(thickness: 2,),
            itemCount: listaPets.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(child: Text(listaPets[index].)),
                subtitle: Text(listaPet[index].),
              );
            }), 
           )
        ],
       ),
       
    );
  }
}