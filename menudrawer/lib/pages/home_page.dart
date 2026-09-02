import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alvaro-Menu Navigasi'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            //Header
            DrawerHeader(
              padding: EdgeInsets.zero, 
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueGrey, Color(0xFF455A64)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                // Mengurangi padding vertikal dari 20 menjadi 15
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10), // Sedikit dikurangi
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.school_outlined, 
                        color: Colors.white, 
                        size: 30, // Ukuran ikon disesuaikan sedikit
                      ),
                    ),
                    const SizedBox(height: 10), // Jarak dikurangi dari 15 ke 10
                    
                    const Text(
                      'Alvaro Daniest Ferson S.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    
                    const Text(
                      'SMKN 64 Jakarta | Web Dev',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            //Beranda
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            //About
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context,
                 '/about',
                 );
              },
            ),
            //contact
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Kontak Saya'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context,
                 '/contact',
                 );
              },
            ),
            //gallery
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Gallery'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context,
                 '/gallery',
                 );
              },
            ),
            //Skill
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Kehalian/Skill'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context,
                 '/skill',
                 );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Hero Card / Kartu Sambutan
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blueGrey, Color(0xFF90A4AE)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blueGrey),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Halo, Alvaro Daniest!',
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
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),

            // 2. Bagian Keahlian / Skills (Menggunakan Wrap & Chip)
            const Text(
              'Keahlian Teknis',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSkillChip('HTML & CSS'),
                _buildSkillChip('JavaScript'),
                _buildSkillChip('C#'),
                _buildSkillChip('SQL'),
              ],
            ),
            const SizedBox(height: 35),

            // 3. Bagian Proyek Terbaru
            const Text(
              'Proyek Terbaru',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 15),
            _buildProjectCard(
              Icons.school,
              'Sistem Manajemen Nilai',
              'Aplikasi pengelolaan data dan kalkulasi nilai siswa berbasis C#.',
            ),
            const SizedBox(height: 12),
            _buildProjectCard(
              Icons.web,
              'Modern Web Layout',
              'Desain antarmuka web interaktif menggunakan gaya Glassmorphism.',
            ),
          ],
        ),
      ),
    );
  }

  // Widget Helper untuk Skill Chips
  Widget _buildSkillChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.blueGrey.withOpacity(0.1),
      side: const BorderSide(color: Colors.transparent),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  // Widget Helper untuk List Proyek
  Widget _buildProjectCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.blueGrey, size: 28),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.black54),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {
          // Aksi jika proyek diklik (opsional)
        },
      ),
    );
  }
}