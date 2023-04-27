import 'package:flutter/material.dart';

void main() {
  runApp(const AboutAppsPage());
}

class AboutAppsPage extends StatelessWidget {
  const AboutAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
         title: const Text("Tentang Aplikasi", style: TextStyle(color: Colors.white),),
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
                    margin: EdgeInsets.all(15),
                    color: Colors.transparent,
                    elevation: 0.0,
                        child: SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/infopemilu.jpeg', 
                                ),   
                              ],
                            ),
                        ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 200,
                    width: 400,
                    child: const Text(
                      'Aplikasi Info Pemilu dibuat bertujuan untuk memudahkan pengguna mendapatkan informasi yang terkait dengan pemilihan umum. Aplikasi Info Pemilu adalah aplikasi unofficial atau bukan aplikasi resmi dari pemerintah (KPU RI). Akan tetapi materi dalam aplikasi bersumber dari website KPU RI.',
                      style: TextStyle(fontFamily: 'RobotoMono', fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
    );
  }
}
