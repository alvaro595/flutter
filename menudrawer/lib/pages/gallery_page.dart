import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, String>> portfolioItems = [
      {
        'title': 'Sistem Manajemen Siswa',
        'category': 'Aplikasi C#',
        'image': 'assets/images/Sistem.jpg'
      },
      {
        'title': 'Sistem Sorting Nilai (Asc/Desc)',
        'category': 'Algoritma C#',
        'image': 'assets/images/images.jpg'
      },
      {
        'title': 'Glassmorphism UI',
        'category': 'Web Layout',
        'image': 'assets/images/Glassmorphism.jpg'
      },
      {
        'title': 'Eksplorasi PartyRock',
        'category': 'No-Code AI',
        'image': 'assets/images/Eksplorasi.jpg'
      },
      {
        'title': 'Desain Avatar (Logo Saku & Bendera)',
        'category': 'Desain Karakter',
        'image': 'assets/images/images (1).jpg'
      },
      {
        'title': 'Database Relasional',
        'category': 'Manajemen SQL',
        'image': 'assets/images/images (2).jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Galeri Portofolio',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          // 1. Header Bagian Atas (Konsisten dengan halaman lain)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: const [
                Icon(Icons.collections_bookmark, size: 50, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  'Karya & Eksplorasi',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Kumpulan proyek, desain antarmuka, dan eksperimen.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ),

          // 2. Grid Galeri
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: portfolioItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Menampilkan 2 kolom
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8, // Mengatur rasio agar kartu sedikit memanjang ke bawah
                ),
                itemBuilder: (context, index) {
                  final item = portfolioItems[index];
                  return _buildGalleryCard(
                    item['image']!, 
                    item['title']!, 
                    item['category']!
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget: Kartu Galeri
  Widget _buildGalleryCard(String imageUrl, String title, String category) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
                );
              },
            ),
            
            // Efek Gradasi Gelap di Bawah
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black87,
                      Colors.black54,
                      Colors.transparent,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      category,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Efek klik transparan (Ripple Effect)
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Aksi saat gambar diklik (misal: buka gambar full screen)
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}