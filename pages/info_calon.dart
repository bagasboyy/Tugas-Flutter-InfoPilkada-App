import 'package:flutter/material.dart';

void main() {
  runApp(InfoCalonPage());
}

class InfoCalonPage extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Nurul Arifin & H.A.M. Nurdin Halid",
      "Deskripsi": "Calon Wali Kota dan Wakil Wali Kota",
      "Partai": "GOLKAR",
      "Visi":  "Visi : Meluruskan sejumlah kekeliruan lama, juga diarahkan untuk mewujudkan Kota Bandung yang mandiri, demokratis, kuat soild, berakar, dan responsif. ",
      "Misi": "Misi : 1. Menegaskan, mengamankan, dan mempertahankan Pancasila sebagai dasar negara dan ideologi bangsa demi memperkokoh Negara Kesatuan Republik Indonesia. 2. Mewujudkan pemerintahan yang efektif dengan tata pemerintahan yang baik, bersih, berwibawa dan demokratis.",
    },
    {
      "Nama": "Giri Ramanda & Susi Imelda",
      "Deskripsi": "Calon Wali Kota dan Wakil Wali Kota",
      "Partai": "PDIP",
      "Visi": "Visi :  Menjadikan Kota Bandung pada masa depan yang diidamkan oleh seluruh Kota di Indonesia, dan oleh karena itu menjadi arah bagi perjuangan Kota Bandung.",
      "Misi": "Misi : 1. alat perjuangan guna membentuk dan membangun karakter bangsa berdasarkan Pancasila 1 Juni 1945. 2. wadah komunikasi politik, mengembangkan dan memperkuat partisipasi politik warga negara",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Info Calon"),
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
              color: Colors.red,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            backgroundImage: AssetImage('assets/paslon2.jpg'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${data['Nama']}",
                              // maxLines: 1, 
                              // overflow: TextOverflow.ellipsis,  
                              style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,),
                              
                              ),
                              Text("${data['Deskripsi']}"),
                              Text("${data['Partai']}"),
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
                                          Center(child: Image.asset('assets/paslon2.jpg')),
                                          Text("${data['Nama']}", 
                                          style: const TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold,),
                                          ),
                                          Text("${data['Deskripsi']}"),
                                          Text("${data['Visi']}"),
                                          Text("${data['Misi']}"),
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
                                    "Visi dan Misi",
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
      ),
       debugShowCheckedModeBanner: false,
    );
  }
}