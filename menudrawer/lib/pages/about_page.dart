import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang Saya',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Header Profile 
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 30, top: 20),
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60, color: Colors.blueGrey),
                    // Jika nanti punya foto profil asli, ganti kodenya menjadi:
                    // backgroundImage: NetworkImage('URL_FOTO_ANDA'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Alvaro Daniest Ferson Sitanggang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Web & Software Programmer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // 2. Konten Utama
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card Profil Singkat
                  _buildSectionTitle(Icons.account_circle, 'Profil Singkat'),
                  const SizedBox(height: 10),
                  const Text(
                    'Saya adalah seorang pengembang perangkat lunak yang memiliki antusiasme tinggi dalam membangun aplikasi web dan sistem desktop. Memiliki ketertarikan kuat dalam merancang antarmuka modern (seperti gaya Glassmorphism) dan menyusun logika program yang efisien.',
                    style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 25),

                  // Card Pendidikan & Karir
                  _buildSectionTitle(Icons.school, 'Pendidikan & Karir'),
                  const SizedBox(height: 10),
                  _buildListTileInfo(
                    title: 'SMKN 64 Jakarta',
                    subtitle: 'Siswa / Pelajar',
                    icon: Icons.account_balance,
                  ),
                  _buildListTileInfo(
                    title: 'Target Karir',
                    subtitle: 'Web Programmer Profesional (Persiapan menuju dunia industri sekelas PT Inti Karya dll).',
                    icon: Icons.work_outline,
                  ),
                  const SizedBox(height: 25),

                  // Card Minat & Eksplorasi
                  _buildSectionTitle(Icons.explore, 'Minat & Eksplorasi'),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildInterestChip(Icons.code, 'No-Code AI (PartyRock)'),
                      _buildInterestChip(Icons.brush, 'Seni Mitologi & Sejarah'),
                      _buildInterestChip(Icons.science, 'Meracik Parfum Natural'),
                      _buildInterestChip(Icons.data_object, 'Manajemen Database'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget untuk Judul Bagian
  Widget _buildSectionTitle(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Colors.blueGrey, size: 24),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  // Helper Widget untuk List Info Pendidikan/Karir
  Widget _buildListTileInfo({required String title, required String subtitle, required IconData icon}) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
      ),
    );
  }

  // Helper Widget untuk Chip Minat
  Widget _buildInterestChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 18, color: Colors.blueGrey),
      label: Text(label),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.blueGrey.shade200),
      ),
    );
  }
}
