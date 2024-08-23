import 'package:flutter/material.dart';
import 'package:flutter_application_listview_2308/pet.dart';

class MypetShop extends StatefulWidget {
  const MypetShop({super.key});

  @override
  State<MypetShop> createState() => _MypetShopState();
}
final imgPet = SizedBox(child: Image.asset("assets/images/9352095-pet-shop-dog-and-cat-cartoon-vector-icon-illustration-animal-flat-cartoon-concept-vetor.jpg"));
class _MypetShopState extends State<MypetShop> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _portController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Clinica",style: TextStyle(color: Colors.white),),backgroundColor: Colors.cyan,centerTitle: true, actions: [IconButton(onPressed: (){
        Navigator.pushNamed(context,'/Mylistpets');
       }, icon: Icon(Icons.list_alt))],),
       body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                labelText: "Nome:",
                prefixIcon: Icon(Icons.abc),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                
              ),
               SizedBox(height: 20,),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                controller: _portController,
                decoration: InputDecoration(
                labelText: "Porte do Seu Companherinho:",
                prefixIcon: Icon(Icons.abc),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                
              ),
              SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                setState(() {
                  
                });
              }, child: Text("CADASTRAR"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                _nomeController.clear();
                _portController.clear();
                setState(() {
                  
                });
              }, child: Text("LIMPAR"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              ),
              
            ],
          ),

       ),
    );
  }
}