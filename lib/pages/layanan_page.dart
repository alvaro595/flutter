import 'package:flutter/material.dart';

class LayananPage extends StatelessWidget {
  final List<Map<String, String>> layanan = const [
    {
      "judul": "Pengembangan Web",
      "deskripsi": "Membangun website modern dan responsif menggunakan teknologi HTML, CSS, dan JavaScript terkini dengan antarmuka yang menarik.",
      "gambar": "assets/images/Mengenal.jpg"
    },
    {
      "judul": "Sistem Perangkat Lunak",
      "deskripsi": "Pembuatan aplikasi desktop dan manajemen sistem menggunakan C# dan arsitektur database SQL yang handal.",
      "gambar": "assets/images/Perangkat Lunak Komputer (1).jpg"
    },
    {
      "judul": "UI/UX Design",
      "deskripsi": "Merancang pengalaman pengguna yang intuitif dengan tren desain visual terbaru seperti Glassmorphism dan layout minimalis.",
      "gambar": "assets/images/dasain.jpg"
    },
    {
      "judul": "Manajemen Basis Data",
      "deskripsi": "Merancang dan mengelola struktur database secara efisien dan aman untuk kebutuhan sistem pencatatan data dan manajemen penilaian.",
      "gambar": "assets/images/database.jpg"
    },
  ];
  const LayananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Layanan Kami",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              "Solusi Digital Kami",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...layanan.map((item) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          item["gambar"]!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["judul"]!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item["deskripsi"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}