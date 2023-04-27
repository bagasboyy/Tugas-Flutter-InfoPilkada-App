import 'package:flutter/material.dart';
import 'package:main/pages/login.dart';

void main() {
  runApp(ProfilPage());
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profil"),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            Padding(
              padding: EdgeInsets.all(7),
              child: Image.asset(
                    "assets/logo_kpu.png",
                  ),
            )
          ],
        ),
        body: Column(
          children: [
            Card(
              color: Colors.red[500],
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,  
                          child: Text("AS"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Ahmad Suardi", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("ahmad123@gmil.com", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white70,
                border: Border.all(color: Colors.black),
              ),
              padding: const EdgeInsets.all(10),
              child:InkWell(
                onTap: () {
                  print("tapped");
                },
                child: Row(
                  children: const [
                    Icon(Icons.edit,
                      size: 20, 
                      color: Colors.black
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Edit Profil", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              padding: const EdgeInsets.all(10),
              child:InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return LoginPage() ;
                    }));
                },
                child: Row(
                  children: const [
                    Icon(Icons.output_rounded,
                      size: 20, 
                      color: Colors.red
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Keluar", style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}