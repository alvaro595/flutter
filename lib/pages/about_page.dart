import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Perusahaan", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        foregroundColor: Colors.amberAccent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.indigo],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 96, 174, 238),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset('assets/images/maple.png',
                    fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ),
            SizedBox(height: 20),
            const Center(
              child: Text(
                "Perusahaan Maple",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(height: 30),
            const Text(
              "Sejarah Perusahaan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const Text(
              "Maple didirikan dengan semangat untuk menghadirkan solusi inovatif yang mempermudah kehidupan masyarakat. Berawal dari sebuah tim kecil yang penuh dedikasi, kini kami telah berkembang menjadi mitra terpercaya di berbagai sektor industri.\n"
              "Saat ini Maple telah dipercaya oleh berbagai klien dari berbagai sektor industri. Dengan didukung oleh tim yang profesional, kreatif, dan berpengalaman, Maple terus berupaya memberikan solusi terbaik yang mampu membantu pelanggan menghadapi tantangan di era digital. Ke depannya, Maple berkomitmen untuk terus berinovasi dan memberikan kontribusi positif bagi perkembangan teknologi di Indonesia maupun tingkat global.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
             const SizedBox(height: 15),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.visibility, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          "Visi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey,
                    ),
                    title: Text("Menjadi pelopor solusi teknologi yang berkelanjutan dan memberikan dampak positif berskala global")
                ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.flag, color: Colors.green),
                        SizedBox(width: 10),
                        Text(
                          "Misi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                   ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey,
                    ),
                    title: Text("Menyediakan produk dan layanan dengan kualitas standar internasional.")
                ),
                ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey,
                    ),
                    title: Text("Mengedepankan kepuasan pelanggan melalui pelayanan yang responsif.")
                ),
                ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey,
                    ),
                    title: Text("Membangun ekosistem kerja yang kreatif, kolaboratif, dan profesional.")
                ),
                  ],
                ),
              ),
            ),
          ]
        )
        
      )
    );
  }
}