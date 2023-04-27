import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/pages/home.dart';

void main() {
  runApp(PartaiPage());
}

class PartaiPage extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Partai PKB",
      "Deskripsi": "Partai Kebangkitan Bangsa",
      "Peserta": "Partai Peserta Pemilu",
      "Ketua": "Ketua: Cucun Ahmad Syamsurijal",
      "Alamat":"Alamat: JL. Raden Saleh 1 No. 9, Menteng, Jakarta Pusat, DKI Jakarta",
      "Web": "Website: pkb.id",
    },
    {
      "Nama": "Partai PDI Perjuangan",
      "Deskripsi": "Partai Demokrasi Indonesia Perjuangan",
      "Peserta": "Partai Peserta Pemilu",
      "Ketua": "Ketua: Megawati Soekarnoputri",
      "Alamat": "Alamat: JL. Diponegoro No. 58, Menteng, Jakarta Pusat",
      "Web": "Website: pdiperjuangan.id"
    },
    {
      "Nama": "Partai GOLKAR",
      "Deskripsi": "Partai Golongan Karya",
      "Peserta": "Partai Peserta Pemilu",
      "Ketua": "Ketua: Airlangga Hartarto",
      "Alamat": "Alamat: JL. Pegangsaan Barat No. 4, Jakarta Pusat",
      "Web": "Website: partaigolkar.com"
    },
    {
      "Nama": "Partai NASDEM",
      "Deskripsi": "Partai NASDEM",
      "Peserta": "Partai Peserta Pemilu",
      "Ketua": "Ketua: Surya Paloh",
      "Alamat": "Alamat: NasDem Tower JL. R.P. Soeroso No. 46, Gondangdia, Menteng, Jakarta Pusat, DKI Jakarta, 10350",
      "Web": "Website: nasdem.id"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          
          title: const Text("Partai Pemilu", style: TextStyle(color: Colors.white),),
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
        
        body: ListView(
          children: myList.map((data) {
            return Card(
              margin: EdgeInsets.all(10),
              color: Colors.red.withOpacity(0.5),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    //row
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            backgroundImage: AssetImage('assets/pkb.jpg'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${data['Nama']}", 
                              style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,),
                              ),
                              Text("${data['Deskripsi']}"),
                              Text("${data['Peserta']}"),
                            ],
                          ),
                          const Spacer(),
                          PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: TextButton(
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Detail'),
                                      content: Wrap(
                                        children: [
                                          Center(child: Image.asset('assets/pkb.jpg')),
                                          Text("${data['Deskripsi']}", 
                                          style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold,),
                                          ),
                                          Text("${data['Ketua']}"),
                                          Text("${data['Alamat']}"),
                                          Text("${data['Web']}"),
                                        ], 
                                      ),   
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Close'),
                                          child: const Text('Close'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  child: const Text(
                                    "Detail",
                                    style:
                                        TextStyle(color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            );
            
          }).toList(),
        ),
        
       
    );
  }
}