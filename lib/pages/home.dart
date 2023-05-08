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
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(30),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(30)
                            ),
                          ),
                          child: SizedBox(
                            width: 350,
                            height: 250,
                            child: InkWell(
                              onTap: () {
                                          
                                print("tapped");
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Berita Terbaru", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
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
                          height: 32,
                        ),
                    Container(
                      width: double.infinity,
                      height: 205,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text("Info Pilkada", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.all(8),
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  child: SizedBox(
                                    width: 200,
                                    height: 130,
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
                                            'assets/logopartai.png', height: 100, width: 230, 
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
                                    width: 200,
                                    height: 130,
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
                                            'assets/hasilvote.png', height: 100, width: 230,  
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
                                    height: 130,
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
                                            'assets/infopemilu.jpeg', height: 100, width: 230, 
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
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

