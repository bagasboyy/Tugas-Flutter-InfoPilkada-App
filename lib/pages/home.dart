import 'package:flutter/material.dart';
import 'package:main/pages/AboutApps.dart';
import 'package:main/pages/RekapVoting.dart';
import 'package:main/pages/partai.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
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
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        margin: EdgeInsets.all(30),
                        color: Colors.transparent,
                        elevation: 0.0,
                        child: SizedBox(
                          width: 350,
                          height: 220,
                          child: InkWell(
                            onTap: () {
                                        
                              print("tapped");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Berita Terbaru", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  'assets/berita.jpeg', 
                                ),   
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                        height: 70,
                      ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text("Info Pilkada", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                margin: EdgeInsets.all(8),
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: SizedBox(
                                  width: 230,
                                  height: 150,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                                        return PartaiPage() ;
                                      }));
                                      print("tapped");
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/logopartai.jpg', height: 120, width: 250, 
                                        ),
                                        const Text("Partai", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(8),
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: SizedBox(
                                  width: 210,
                                  height: 150,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                                        return RekapVotingPage() ;
                                      }));
                                      print("tapped");
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/hasilvote.jpg', height: 120, width: 250,  
                                        ),
                                        const Text("Hasil Vote", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(8),
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: SizedBox(
                                  width: 200,
                                  height: 150,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                                        return AboutAppsPage() ;
                                      }));
                                      print("tapped");
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/infopemilu.jpeg', height: 120, width: 250, 
                                        ),
                                        const Text("Tentang Aplikasi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

