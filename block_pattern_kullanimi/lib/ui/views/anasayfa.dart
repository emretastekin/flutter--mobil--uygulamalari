import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Pattern", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(sonuc.toString(), style: const TextStyle(fontSize: 50),),
              TextField(controller: tfSayi1, decoration: const InputDecoration(hintText: "Sayı 1"),),
              TextField(controller: tfSayi2, decoration: const InputDecoration(hintText: "Sayı 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                  }, child: const Text("Toplama", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
                  ElevatedButton(onPressed: (){

                  }, child: const Text("Çarpma", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
