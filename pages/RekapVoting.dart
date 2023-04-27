import 'package:flutter/material.dart';

void main(){
  runApp(RekapVotingPage());
}

class RekapVotingPage extends StatelessWidget {
  const RekapVotingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
          title: Text("Hasil Vote", style: TextStyle(color: Colors.white),),
          centerTitle: true,
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
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 120,
                    width: 250,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      'HASIL PEMILIHAN KEPALA DAERAH KOTA BANDUNG 2024',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        // color: Colors.amberAccent,
                        child: SizedBox(
                          height: 150,
                          width: 120,
                          child: InkWell(
                            onTap: () {    
                              print("tapped");
                            },
                            child: Column(
                              children: [
                                Image.asset('assets/paslon1.jpeg'),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("Paslon 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("45%", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        // color: Colors.amberAccent,
                        child: SizedBox(
                          height: 150,
                          width: 120,
                          child: InkWell(
                            onTap: () {    
                              print("tapped");
                            },
                            child: Column(
                              children: [
                                Image.asset('assets/paslon2.jpg'),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("Paslon 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("55%", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 220,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: const Center(
                            child: Text(
                              'Info Rekap Terkini',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: const Center(
                            child: Text(
                              'Suara Masuk: 750',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: const Center(
                            child: Text(
                              'Suara Sah: 690',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: const Center(
                            child: Text(
                              'Suara Tidak Sah: 10',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: const Center(
                            child: Text(
                              'Golongan Putih: 50',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
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
    );
  }
}